FROM python:3.9
WORKDIR / penguin_species_prediction
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ml_app.py .
EXPOSE 8501
CMD ["streamlit", "run", "ml_app.py"]