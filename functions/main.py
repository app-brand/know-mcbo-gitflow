from firebase_functions import https_fn
from firebase_admin import initialize_app
import requests
import os
import json

# Inicializar la app de Firebase
initialize_app()

# Obtener la API Key de Google Maps desde las variables de entorno
GOOGLE_MAPS_API_KEY = os.getenv('GOOGLE_MAPS_API_KEY')

# URL base para la API de Google Maps Directions
GOOGLE_MAPS_DIRECTIONS_URL = "https://maps.googleapis.com/maps/api/directions/json"

@https_fn.on_request()
def get_directions(req: https_fn.Request) -> https_fn.Response:
    """
    Esta función hace una llamada a la API de Google Maps Directions usando el método GET.
    Espera los parámetros 'origin' y 'destination' en la URL como query parameters.
    """
    print(f"URL completa de la solicitud: {req.url}")
    print(f"GOOGLE_MAPS_API_KEY: {GOOGLE_MAPS_API_KEY}")

    # Validar que sea una solicitud GET
    if req.method != 'GET':
        return https_fn.Response("Método no permitido. Use GET.", status=405)
    
    # Leer los parámetros de la URL
    origin = req.args.get('origin')
    print(origin)
    
    destination = req.args.get('destination')
    print(destination)
    
    # Programación defensiva: validar que los parámetros existan
    if not origin or not destination:
        return https_fn.Response("Parámetros 'origin' y 'destination' son requeridos.", status=400)
    
    # Construir la URL de la solicitud a la API de Google Maps
    params = {
        "origin": origin,
        "destination": destination,
        "key": 'AIzaSyA0vsjSJXoisdpB-ouzVZuk0aCiEaievws',  # Usar la clave de la variable de entorno
    }
    
    try:
        # Hacer la solicitud HTTP GET a la API de Google Maps Directions
        response = requests.get(GOOGLE_MAPS_DIRECTIONS_URL, params=params)
        print(f"URL resultante de la solicitud get directions: {response.url}")
        print('-------------')
        print(f"Codigo de respuesta - {response.status_code}")
        
        # Verificar si la respuesta fue exitosa
        if response.status_code != 200:
            return https_fn.Response(f"Error al llamar a la API de Google Maps: {response.status_code}", status=500)
        
        # Obtener los datos JSON de la respuesta
        data = response.json()
        print(data)
        
        # Verificar si hay rutas en la respuesta
        if "routes" not in data or len(data["routes"]) == 0:
            return https_fn.Response("No se encontraron rutas.", status=404)
        
        # Retornar los datos serializados como JSON
        https_fn.Response(
            json.dumps(data), 
            headers={"Content-Type": "application/json"},  # Establecer el encabezado como application/json
            status=200
        )
    
    except requests.exceptions.RequestException as e:
        return https_fn.Response(f"Error en la solicitud HTTP: {str(e)}", status=500)
    
    except Exception as e:
        return https_fn.Response(f"Error inesperado: {str(e)}", status=500)
