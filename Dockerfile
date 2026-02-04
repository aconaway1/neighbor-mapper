FROM python:3.12-slim

WORKDIR /app

# Create the logs directory inside the image
RUN mkdir -p /app/logs

# Mark it as a volume so Docker stores logs outside the container filesystem
# VOLUME ["/app/logs"]

# Install dependencies
RUN pip install --no-cache-dir flask netmiko

# Copy application code
COPY app /app

# Expose the web port
EXPOSE 8000

ENV FLASK_APP=app.py
ENV PYTHONUNBUFFERED=1

CMD ["python", "app.py"]
