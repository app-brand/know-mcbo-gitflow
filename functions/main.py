"""
# Welcome to Cloud Functions for Firebase for Python!
from firebase_functions import https_fn
from firebase_admin import initialize_app
initialize_app()
#
@https_fn.on_request()
def on_request_example(req: https_fn.Request) -> https_fn.Response:
    return https_fn.Response("Hello world!")
"""
from firebase_functions import https_fn
from firebase_admin import initialize_app
import requests
import os

# Inicializar la app de Firebase
initialize_app()
# Obtener la API Key de Google Maps de las variables de entorno
GOOGLE_MAPS_API_KEY = os.getenv('GOOGLE_MAPS_API_KEY')
# URL base para la API de Google Maps Directions
GOOGLE_MAPS_DIRECTIONS_URL = "https://maps.googleapis.com/maps/api/directions/json"

@https_fn.on_request()
def get_directions(req: https_fn.Request) -> https_fn.Response:
    """
    Esta función hace una llamada a la API de Google Maps Directions.
    Espera parámetros de origen y destino en la solicitud y maneja errores.
    """
    # Leer los parámetros de la solicitud
    origin = req.args.get('origin')
    destination = req.args.get('destination')
    # Programación defensiva: validar que los parámetros existan
    if not origin or not destination:
        return https_fn.Response("Parámetros 'origin' y 'destination' son requeridos.", status=400)
    # Construir la URL de la solicitud
    params = {
        "origin": origin,
        "destination": destination,
        "key": GOOGLE_MAPS_API_KEY
    }
    try:
        # Hacer la solicitud HTTP a la API de Google Maps
        response = requests.get(GOOGLE_MAPS_DIRECTIONS_URL, params=params)
        # Programación defensiva: verificar el estado de la respuesta
        if response.status_code != 200:
            return https_fn.Response(f"Error al llamar a la API de Google Maps: {response.status_code}", status=500)
        # Obtener los datos JSON de la respuesta
        data = response.json()
        # Programación defensiva: verificar si hay resultados en la respuest
        if "routes" not in data or len(data["routes"]) == 0:
            return https_fn.Response("No se encontraron rutas.", status=404)
        # Si todo está bien, retornar la información de la ruta
        return https_fn.Response(data)
    except requests.exceptions.RequestException as e:
        # Programación defensiva: manejar excepciones de la solicitud HTTP
        return https_fn.Response(f"Error en la solicitud HTTP: {str(e)}", status=500)
    except Exception as e:
        # Programación defensiva: manejar cualquier otro error inesperado
        return https_fn.Response(f"Error inesperado: {str(e)}", status=500)
