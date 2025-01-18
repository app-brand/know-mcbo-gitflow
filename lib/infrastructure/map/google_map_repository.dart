import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/map/interface_map_facade.dart';

@LazySingleton(as: InterfaceMapFacade)
class GoogleMapRepository implements InterfaceMapFacade {}
