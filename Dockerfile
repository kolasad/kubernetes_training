#
FROM python:3.10

#
COPY ./app /app

#
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

#
COPY ./app /app

#
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]