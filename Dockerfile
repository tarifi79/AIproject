# Use Python 3.10 image as the base
FROM python:3.10

# Copy your requirements file into the image
COPY requirements.txt .

# Upgrade pip to the latest version first
RUN pip install --upgrade pip

# Install the requirements, ensuring any errors here are clearly shown
RUN pip install -r requirements.txt

# Copy your server code into the image
COPY server server/

# Expose port 5000 for your Flask app
EXPOSE 5000

# Specify the command to run your Flask application
#CMD ["python", "server/main.py"]
CMD ["gunicorn", "-w", "4", "-b", ":5000", "--timeout", "120", "server.main:app"]

