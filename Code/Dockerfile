# Dockerfile

# Stage 1: Build the image
FROM python:3 as builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Create the final image
FROM python:3
WORKDIR /app
COPY --from=builder /app /app
COPY convertor.py .
CMD [ "python", "./convertor.py" ]
