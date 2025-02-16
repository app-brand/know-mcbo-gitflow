// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MapEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MapEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CameraMovedImplCopyWith<$Res> {
  factory _$$CameraMovedImplCopyWith(
          _$CameraMovedImpl value, $Res Function(_$CameraMovedImpl) then) =
      __$$CameraMovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraPosition cameraPosition});
}

/// @nodoc
class __$$CameraMovedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$CameraMovedImpl>
    implements _$$CameraMovedImplCopyWith<$Res> {
  __$$CameraMovedImplCopyWithImpl(
      _$CameraMovedImpl _value, $Res Function(_$CameraMovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
  }) {
    return _then(_$CameraMovedImpl(
      cameraPosition: null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$CameraMovedImpl implements _CameraMoved {
  const _$CameraMovedImpl({required this.cameraPosition});

  @override
  final CameraPosition cameraPosition;

  @override
  String toString() {
    return 'MapEvent.cameraMoved(cameraPosition: $cameraPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraMovedImpl &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPosition);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraMovedImplCopyWith<_$CameraMovedImpl> get copyWith =>
      __$$CameraMovedImplCopyWithImpl<_$CameraMovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return cameraMoved(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return cameraMoved?.call(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (cameraMoved != null) {
      return cameraMoved(cameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return cameraMoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return cameraMoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (cameraMoved != null) {
      return cameraMoved(this);
    }
    return orElse();
  }
}

abstract class _CameraMoved implements MapEvent {
  const factory _CameraMoved({required final CameraPosition cameraPosition}) =
      _$CameraMovedImpl;

  CameraPosition get cameraPosition;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraMovedImplCopyWith<_$CameraMovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkerAddedImplCopyWith<$Res> {
  factory _$$MarkerAddedImplCopyWith(
          _$MarkerAddedImpl value, $Res Function(_$MarkerAddedImpl) then) =
      __$$MarkerAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Marker marker});
}

/// @nodoc
class __$$MarkerAddedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$MarkerAddedImpl>
    implements _$$MarkerAddedImplCopyWith<$Res> {
  __$$MarkerAddedImplCopyWithImpl(
      _$MarkerAddedImpl _value, $Res Function(_$MarkerAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marker = null,
  }) {
    return _then(_$MarkerAddedImpl(
      marker: null == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as Marker,
    ));
  }
}

/// @nodoc

class _$MarkerAddedImpl implements _MarkerAdded {
  const _$MarkerAddedImpl({required this.marker});

  @override
  final Marker marker;

  @override
  String toString() {
    return 'MapEvent.markerAdded(marker: $marker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerAddedImpl &&
            (identical(other.marker, marker) || other.marker == marker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marker);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerAddedImplCopyWith<_$MarkerAddedImpl> get copyWith =>
      __$$MarkerAddedImplCopyWithImpl<_$MarkerAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return markerAdded(marker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return markerAdded?.call(marker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (markerAdded != null) {
      return markerAdded(marker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return markerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return markerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (markerAdded != null) {
      return markerAdded(this);
    }
    return orElse();
  }
}

abstract class _MarkerAdded implements MapEvent {
  const factory _MarkerAdded({required final Marker marker}) =
      _$MarkerAddedImpl;

  Marker get marker;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkerAddedImplCopyWith<_$MarkerAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapTappedImplCopyWith<$Res> {
  factory _$$MapTappedImplCopyWith(
          _$MapTappedImpl value, $Res Function(_$MapTappedImpl) then) =
      __$$MapTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng position});
}

/// @nodoc
class __$$MapTappedImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$MapTappedImpl>
    implements _$$MapTappedImplCopyWith<$Res> {
  __$$MapTappedImplCopyWithImpl(
      _$MapTappedImpl _value, $Res Function(_$MapTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$MapTappedImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$MapTappedImpl implements _MapTapped {
  const _$MapTappedImpl({required this.position});

  @override
  final LatLng position;

  @override
  String toString() {
    return 'MapEvent.mapTapped(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTappedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTappedImplCopyWith<_$MapTappedImpl> get copyWith =>
      __$$MapTappedImplCopyWithImpl<_$MapTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return mapTapped(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return mapTapped?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (mapTapped != null) {
      return mapTapped(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return mapTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return mapTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (mapTapped != null) {
      return mapTapped(this);
    }
    return orElse();
  }
}

abstract class _MapTapped implements MapEvent {
  const factory _MapTapped({required final LatLng position}) = _$MapTappedImpl;

  LatLng get position;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapTappedImplCopyWith<_$MapTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapStyledImplCopyWith<$Res> {
  factory _$$MapStyledImplCopyWith(
          _$MapStyledImpl value, $Res Function(_$MapStyledImpl) then) =
      __$$MapStyledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleMapController controller});
}

/// @nodoc
class __$$MapStyledImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$MapStyledImpl>
    implements _$$MapStyledImplCopyWith<$Res> {
  __$$MapStyledImplCopyWithImpl(
      _$MapStyledImpl _value, $Res Function(_$MapStyledImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$MapStyledImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$MapStyledImpl implements _MapStyled {
  const _$MapStyledImpl(this.controller);

  @override
  final GoogleMapController controller;

  @override
  String toString() {
    return 'MapEvent.mapStyled(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStyledImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStyledImplCopyWith<_$MapStyledImpl> get copyWith =>
      __$$MapStyledImplCopyWithImpl<_$MapStyledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return mapStyled(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return mapStyled?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (mapStyled != null) {
      return mapStyled(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return mapStyled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return mapStyled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (mapStyled != null) {
      return mapStyled(this);
    }
    return orElse();
  }
}

abstract class _MapStyled implements MapEvent {
  const factory _MapStyled(final GoogleMapController controller) =
      _$MapStyledImpl;

  GoogleMapController get controller;

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStyledImplCopyWith<_$MapStyledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CenterOnMaracaiboImplCopyWith<$Res> {
  factory _$$CenterOnMaracaiboImplCopyWith(_$CenterOnMaracaiboImpl value,
          $Res Function(_$CenterOnMaracaiboImpl) then) =
      __$$CenterOnMaracaiboImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CenterOnMaracaiboImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$CenterOnMaracaiboImpl>
    implements _$$CenterOnMaracaiboImplCopyWith<$Res> {
  __$$CenterOnMaracaiboImplCopyWithImpl(_$CenterOnMaracaiboImpl _value,
      $Res Function(_$CenterOnMaracaiboImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CenterOnMaracaiboImpl implements _CenterOnMaracaibo {
  const _$CenterOnMaracaiboImpl();

  @override
  String toString() {
    return 'MapEvent.centerOnMaracaibo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CenterOnMaracaiboImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CameraPosition cameraPosition) cameraMoved,
    required TResult Function(Marker marker) markerAdded,
    required TResult Function(LatLng position) mapTapped,
    required TResult Function(GoogleMapController controller) mapStyled,
    required TResult Function() centerOnMaracaibo,
  }) {
    return centerOnMaracaibo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CameraPosition cameraPosition)? cameraMoved,
    TResult? Function(Marker marker)? markerAdded,
    TResult? Function(LatLng position)? mapTapped,
    TResult? Function(GoogleMapController controller)? mapStyled,
    TResult? Function()? centerOnMaracaibo,
  }) {
    return centerOnMaracaibo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CameraPosition cameraPosition)? cameraMoved,
    TResult Function(Marker marker)? markerAdded,
    TResult Function(LatLng position)? mapTapped,
    TResult Function(GoogleMapController controller)? mapStyled,
    TResult Function()? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (centerOnMaracaibo != null) {
      return centerOnMaracaibo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CameraMoved value) cameraMoved,
    required TResult Function(_MarkerAdded value) markerAdded,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_MapStyled value) mapStyled,
    required TResult Function(_CenterOnMaracaibo value) centerOnMaracaibo,
  }) {
    return centerOnMaracaibo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CameraMoved value)? cameraMoved,
    TResult? Function(_MarkerAdded value)? markerAdded,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_MapStyled value)? mapStyled,
    TResult? Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
  }) {
    return centerOnMaracaibo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CameraMoved value)? cameraMoved,
    TResult Function(_MarkerAdded value)? markerAdded,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_MapStyled value)? mapStyled,
    TResult Function(_CenterOnMaracaibo value)? centerOnMaracaibo,
    required TResult orElse(),
  }) {
    if (centerOnMaracaibo != null) {
      return centerOnMaracaibo(this);
    }
    return orElse();
  }
}

abstract class _CenterOnMaracaibo implements MapEvent {
  const factory _CenterOnMaracaibo() = _$CenterOnMaracaiboImpl;
}

/// @nodoc
mixin _$MapState {
  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  GoogleMapController? get mapController => throw _privateConstructorUsedError;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {CameraPosition cameraPosition,
      Set<Marker> markers,
      GoogleMapController? mapController});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
    Object? markers = null,
    Object? mapController = freezed,
  }) {
    return _then(_value.copyWith(
      cameraPosition: null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      mapController: freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
          _$MapStateImpl value, $Res Function(_$MapStateImpl) then) =
      __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CameraPosition cameraPosition,
      Set<Marker> markers,
      GoogleMapController? mapController});
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
      _$MapStateImpl _value, $Res Function(_$MapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPosition = null,
    Object? markers = null,
    Object? mapController = freezed,
  }) {
    return _then(_$MapStateImpl(
      cameraPosition: null == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      mapController: freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
    ));
  }
}

/// @nodoc

class _$MapStateImpl implements _MapState {
  const _$MapStateImpl(
      {required this.cameraPosition,
      required final Set<Marker> markers,
      this.mapController})
      : _markers = markers;

  @override
  final CameraPosition cameraPosition;
  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  final GoogleMapController? mapController;

  @override
  String toString() {
    return 'MapState(cameraPosition: $cameraPosition, markers: $markers, mapController: $mapController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPosition,
      const DeepCollectionEquality().hash(_markers), mapController);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {required final CameraPosition cameraPosition,
      required final Set<Marker> markers,
      final GoogleMapController? mapController}) = _$MapStateImpl;

  @override
  CameraPosition get cameraPosition;
  @override
  Set<Marker> get markers;
  @override
  GoogleMapController? get mapController;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
