// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelPageStateData {
  Hotel get hotel => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelPageStateDataCopyWith<HotelPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelPageStateDataCopyWith<$Res> {
  factory $HotelPageStateDataCopyWith(
          HotelPageStateData value, $Res Function(HotelPageStateData) then) =
      _$HotelPageStateDataCopyWithImpl<$Res, HotelPageStateData>;
  @useResult
  $Res call({Hotel hotel, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class _$HotelPageStateDataCopyWithImpl<$Res, $Val extends HotelPageStateData>
    implements $HotelPageStateDataCopyWith<$Res> {
  _$HotelPageStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelPageStateDataCopyWith<$Res>
    implements $HotelPageStateDataCopyWith<$Res> {
  factory _$$_HotelPageStateDataCopyWith(_$_HotelPageStateData value,
          $Res Function(_$_HotelPageStateData) then) =
      __$$_HotelPageStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Hotel hotel, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class __$$_HotelPageStateDataCopyWithImpl<$Res>
    extends _$HotelPageStateDataCopyWithImpl<$Res, _$_HotelPageStateData>
    implements _$$_HotelPageStateDataCopyWith<$Res> {
  __$$_HotelPageStateDataCopyWithImpl(
      _$_HotelPageStateData _value, $Res Function(_$_HotelPageStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_$_HotelPageStateData(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HotelPageStateData
    with DiagnosticableTreeMixin
    implements _HotelPageStateData {
  const _$_HotelPageStateData(
      {required this.hotel,
      this.hasLoadingError = false,
      this.isLoading = false});

  @override
  final Hotel hotel;
  @override
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HotelPageStateData(hotel: $hotel, hasLoadingError: $hasLoadingError, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HotelPageStateData'))
      ..add(DiagnosticsProperty('hotel', hotel))
      ..add(DiagnosticsProperty('hasLoadingError', hasLoadingError))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelPageStateData &&
            (identical(other.hotel, hotel) || other.hotel == hotel) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hotel, hasLoadingError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelPageStateDataCopyWith<_$_HotelPageStateData> get copyWith =>
      __$$_HotelPageStateDataCopyWithImpl<_$_HotelPageStateData>(
          this, _$identity);
}

abstract class _HotelPageStateData implements HotelPageStateData {
  const factory _HotelPageStateData(
      {required final Hotel hotel,
      final bool hasLoadingError,
      final bool isLoading}) = _$_HotelPageStateData;

  @override
  Hotel get hotel;
  @override
  bool get hasLoadingError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HotelPageStateDataCopyWith<_$_HotelPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
