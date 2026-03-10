FROM python:3.12-slim-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -m ryuser && mkdir logs qr_codes && chown ryuser:ryuser logs qr_codes

COPY --chown=ryuser:ryuser . .

USER ryuser

ENTRYPOINT ["python", "main.py"]
CMD ["-u", "http://github.com"]