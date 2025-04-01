import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/application/map/map_bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MapMobile extends StatelessWidget {
  const MapMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(const MapEvent.started()),
      child: const _MapMobileView(),
    );
  }
}

class _MapMobileView extends StatefulWidget {
  const _MapMobileView();

  @override
  State<_MapMobileView> createState() => _MapMobileViewState();
}

class _MapMobileViewState extends State<_MapMobileView> {
  late GoogleMapController _mapController;
  List<dynamic> placesInfo = [];
  Map<String, dynamic>? selectedPlace;
  bool isDetailVisible = false;
  bool isMapFullScreen = false; // Nuevo estado para el modo de mapa en pantalla completa
  Set<Marker> _markers = {};
  MapType _currentMapType = MapType.satellite;

  @override
  void initState() {
    super.initState();
    _loadPlacesInfo();
  }

  Future<void> _loadPlacesInfo() async {
    final String response = await rootBundle.loadString('assets/json/places_info.json');
    setState(() {
      placesInfo = json.decode(response);
    });
  }

  void _onCardTap(String title) {
    final place = placesInfo.firstWhere(
      (place) => place['name'] == title,
      orElse: () {
        print('Lugar no encontrado: $title');
        return null;
      },
    );

    if (place != null) {
      print('Lugar encontrado: $place'); 

      setState(() {
        selectedPlace = place;
        isDetailVisible = true;
      });
    }
  }

  void _closeDetail() {
    setState(() {
      isDetailVisible = false;
      selectedPlace = null;
      _markers.clear();
      _currentMapType = MapType.satellite;

      _mapController.animateCamera(
        CameraUpdate.newLatLngZoom(
          const LatLng(10.6427, -71.6125),
          13.0,
        ),
      );
    });
  }

  void _viewLocationOnMap() {
    if (selectedPlace != null) {
      LatLng position = LatLng(
        double.parse(selectedPlace!['latitude']),
        double.parse(selectedPlace!['longitude']),
      );

      setState(() {        
        isDetailVisible = false;
        isMapFullScreen = true; // Activar el modo de mapa en pantalla completa
        _markers = {
          Marker(
            markerId: MarkerId(selectedPlace!['id'].toString()),
            position: position,
            infoWindow: InfoWindow(
              title: selectedPlace!['name'],
              snippet: selectedPlace!['address'],
            ),
          ),
        };        
      });

      _mapController.animateCamera(
        CameraUpdate.newLatLngZoom(position, 17.0),
      );     

      _currentMapType = MapType.hybrid;
    }
  }

  void _exitFullScreenMap() {
    setState(() {
      isMapFullScreen = false; // Salir del modo de mapa en pantalla completa
      isDetailVisible = true; // Volver a mostrar la card informativa
      _markers.clear(); // Limpiar el marker al volver a la card
    });

    // Centrar el mapa en la posición inicial y cambiar al modo satélite
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        const LatLng(10.6427, -71.6125), // Posición inicial
        13.0,
      ),
    );
    _currentMapType = MapType.satellite;
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(10.6427, -71.6125),
              zoom: 13,
            ),
            onMapCreated: (controller) {
              _mapController = controller;
            },
            mapType: _currentMapType,
            zoomControlsEnabled: false,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            zoomGesturesEnabled: false,
            scrollGesturesEnabled: false,
            tiltGesturesEnabled: false,
            rotateGesturesEnabled: false,
            mapToolbarEnabled: false,
            markers: _markers,
          ),

          if (isMapFullScreen)            
            Positioned.fill(
              child: Stack(
                children: [
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    child: FloatingActionButton(
                      onPressed: _exitFullScreenMap,
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

          if (isDetailVisible)
            Positioned.fill(
              child: Stack(
                children: [
                  // Mapa de fondo
                  /* GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(10.6427, -71.6125),
                      zoom: 13,
                    ),
                    onMapCreated: (controller) {
                      _mapController = controller;
                    },
                    mapType: _currentMapType,
                    zoomControlsEnabled: false,
                    myLocationEnabled: false,
                    myLocationButtonEnabled: false,
                    zoomGesturesEnabled: false,
                    scrollGesturesEnabled: false,
                    tiltGesturesEnabled: false,
                    rotateGesturesEnabled: false,
                    mapToolbarEnabled: false,                    
                    markers: _markers,
                  ), */

                  // Card informativo centrado
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9, // 90% del ancho de la pantalla
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8.0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del card al contenido
                          children: [
                            // Imagen del lugar con la "X" flotante encima
                            Stack(
                              children: [
                                // Imagen del header
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
                                  child: Image.asset(
                                    '${selectedPlace!['image']}',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 200.0,
                                  ),
                                ),
                                // Botón para cerrar la card
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: IconButton(
                                    icon: const Icon(Icons.close, color: Colors.white),
                                    onPressed: _closeDetail,
                                    tooltip: 'Cerrar',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),
                            // Título del lugar
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                selectedPlace!['name'],
                                style: const TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            // Dirección
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on, color: Colors.redAccent, size: 20.0),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    child: Text(
                                      selectedPlace!['address'],
                                      style: const TextStyle(fontSize: 16.0, color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            // Descripción
                            if (selectedPlace!.containsKey('description'))
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  selectedPlace!['description'],
                                  style: const TextStyle(fontSize: 14.0, color: Colors.black87, height: 1.5),
                                ),
                              ),
                            const SizedBox(height: 16.0),
                            // Apartado de servicios
                            if (selectedPlace != null && selectedPlace!.containsKey('services'))
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.room_service, color: Colors.blueAccent, size: 20.0),
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                      child: Text(
                                        selectedPlace!['services'] ?? 'No disponible',
                                        style: const TextStyle(fontSize: 14.0, color: Colors.black87),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(height: 16.0),
                            // Apartado de horario
                            if (selectedPlace != null && selectedPlace!.containsKey('hours'))
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.access_time, color: Colors.orangeAccent, size: 20.0),
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                      child: Text(
                                        selectedPlace!['hours'] ?? 'No disponible',
                                        style: const TextStyle(fontSize: 14.0, color: Colors.black87),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(height: 16.0),
                            // Botones de acción (WhatsApp e Instagram)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Botón de WhatsApp
                                  if (selectedPlace!.containsKey('whatsapp'))
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        final whatsappUrl = "https://wa.me/${selectedPlace!['whatsapp']}";
                                        launchUrl(Uri.parse(whatsappUrl));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      ),
                                      icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
                                      label: const Text(
                                        'WhatsApp',
                                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                                      ),
                                    ),
                                  // Botón de Instagram
                                  if (selectedPlace!.containsKey('instagram'))
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        final instagramUrl = "https://instagram.com/${selectedPlace!['instagram']}";
                                        launchUrl(Uri.parse(instagramUrl));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.pink,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                      ),
                                      icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                                      label: const Text(
                                        'Instagram',
                                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            // Botón para ver la ubicación en el mapa
                            Center(
                              child: ElevatedButton.icon(
                                onPressed: _viewLocationOnMap,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                ),
                                icon: const Icon(Icons.map, color: Colors.white),
                                label: const Text(
                                  'Ver ubicación en el mapa',
                                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          if (!isDetailVisible && !isMapFullScreen)
            Padding(
              key: const ValueKey('GridView'),
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                childAspectRatio: 1.5,
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                children: [
                  _buildGridItem(
                    imageUrl: 'assets/images/places/529.jpg',
                    title: 'Rechanfles',
                    category: 'Música',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/callecarabobo.jpg',
                    title: 'Calle Carabobo',
                    category: 'Historia',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/tranvia.jpeg',
                    title: 'Tranvía Maracaibo',
                    category: 'Transporte',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/maracaibo-2.jpeg',
                    title: 'Maracaibo 2',
                    category: 'Hotel',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/maracaibo-7.jpeg',
                    title: 'Maracaibo 7',
                    category: 'Parque',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/monumentochinita.jpg',
                    title: 'Monumento Chinita',
                    category: 'Museo',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/Puente_de_Maracaibo (1).jpg',
                    title: 'Puente Maracaibo',
                    category: 'Atracción',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/puente4k.png',
                    title: 'Puente 4k',
                    category: 'Playa',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/puente4k2.jpg',
                    title: 'Puente 4k 2',
                    category: 'Compras',
                  ),
                  _buildGridItem(
                    imageUrl: 'assets/images/places/teatrobaralt.jpg',
                    title: 'Teatro Baralt',
                    category: 'Teatro',
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildGridItem({
    required String imageUrl,
    required String title,
    required String category,
  }) {
    final categoryColors = {
      'Música': Colors.blue,
      'Historia': Colors.brown,
      'Transporte': Colors.green,
      'Hotel': Colors.orange,
      'Parque': Colors.teal,
      'Museo': Colors.purple,
      'Atracción': Colors.red,
      'Playa': Colors.cyan,
      'Compras': Colors.pink,
      'Teatro': Colors.indigo,
    };

    return GestureDetector(
      onTap: () => _onCardTap(title),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                left: 8.0,
                right: 8.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: categoryColors[category] ?? Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
