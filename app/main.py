import cv2
import numpy as np
import logging
from google.cloud import storage
import functions_framework
from cloudevents.http import CloudEvent
import os
from pathlib import Path

# =========================
# Logging (Cloud Run)
# =========================
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(message)s"
)
logger = logging.getLogger(__name__)

storage_client = storage.Client()

SUPPORTED_EXTENSIONS = (".png", ".jpg", ".jpeg")

@functions_framework.cloud_event
def main(cloud_event: CloudEvent):
    data = cloud_event.data

    bucket_name = data.get("bucket")
    file_name = data.get("name")

    OUTPUT_BUCKET = os.getenv("OUTPUT_BUCKET")

    logger.info(
        "Evento recebido",
        extra={
            "bucket": bucket_name,
            "file": file_name,
            "event_id": cloud_event["id"]
        }
    )

    if not file_name or not bucket_name:
        logger.error("Evento inválido")
        return

    # 🔍 Valida extensão
    file_path = Path(file_name)
    if file_path.suffix.lower() not in SUPPORTED_EXTENSIONS:
        logger.warning("Formato não suportado", extra={"file": file_name})
        return

    try:
        input_bucket = storage_client.bucket(bucket_name)
        output_bucket = storage_client.bucket(OUTPUT_BUCKET)

        blob = input_bucket.blob(file_name)
        image_bytes = blob.download_as_bytes()

        # Decode com OpenCV
        np_arr = np.frombuffer(image_bytes, np.uint8)
        image = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

        if image is None:
            logger.error("Imagem inválida ou codec não suportado", extra={"file": file_name})
            return

        # 🔧 Processamento
        gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

        # Sempre gerar PNG
        success, encoded_image = cv2.imencode(".png", gray_image)
        if not success:
            logger.error("Falha ao codificar imagem")
            return

        output_name = f"processed/{file_path.stem}.png"
        output_blob = output_bucket.blob(output_name)

        output_blob.upload_from_string(
            encoded_image.tobytes(),
            content_type="image/png"
        )

        logger.info(
            "Imagem processada com sucesso",
            extra={
                "input": file_name,
                "output": output_name,
                "bucket": OUTPUT_BUCKET
            }
        )

    except Exception:
        logger.exception("Erro inesperado")
