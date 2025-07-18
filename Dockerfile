FROM python:3.10-slim

#set working directory inside the container
WORKDIR /app

#copy requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#copy app code
COPY app.py .

#Expose the port for flask app
EXPOSE 5000

#run the app
CMD ["python", "app.py"]

