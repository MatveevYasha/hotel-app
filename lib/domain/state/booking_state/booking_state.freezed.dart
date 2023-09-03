// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingStateData {
  Booking get booking => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateDataCopyWith<BookingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateDataCopyWith<$Res> {
  factory $BookingStateDataCopyWith(
          BookingStateData value, $Res Function(BookingStateData) then) =
      _$BookingStateDataCopyWithImpl<$Res, BookingStateData>;
  @useResult
  $Res call({Booking booking, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class _$BookingStateDataCopyWithImpl<$Res, $Val extends BookingStateData>
    implements $BookingStateDataCopyWith<$Res> {
  _$BookingStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
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
abstract class _$$_BookingStateDataCopyWith<$Res>
    implements $BookingStateDataCopyWith<$Res> {
  factory _$$_BookingStateDataCopyWith(
          _$_BookingStateData value, $Res Function(_$_BookingStateData) then) =
      __$$_BookingStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Booking booking, bool hasLoadingError, bool isLoading});
}

/// @nodoc
class __$$_BookingStateDataCopyWithImpl<$Res>
    extends _$BookingStateDataCopyWithImpl<$Res, _$_BookingStateData>
    implements _$$_BookingStateDataCopyWith<$Res> {
  __$$_BookingStateDataCopyWithImpl(
      _$_BookingStateData _value, $Res Function(_$_BookingStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? hasLoadingError = null,
    Object? isLoading = null,
  }) {
    return _then(_$_BookingStateData(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
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

class _$_BookingStateData
    with DiagnosticableTreeMixin
    implements _BookingStateData {
  const _$_BookingStateData(
      {required this.booking,
      this.hasLoadingError = false,
      this.isLoading = false});

  @override
  final Booking booking;
  @override
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookingStateData(booking: $booking, hasLoadingError: $hasLoadingError, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookingStateData'))
      ..add(DiagnosticsProperty('booking', booking))
      ..add(DiagnosticsProperty('hasLoadingError', hasLoadingError))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingStateData &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, booking, hasLoadingError, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateDataCopyWith<_$_BookingStateData> get copyWith =>
      __$$_BookingStateDataCopyWithImpl<_$_BookingStateData>(this, _$identity);
}

abstract class _BookingStateData implements BookingStateData {
  const factory _BookingStateData(
      {required final Booking booking,
      final bool hasLoadingError,
      final bool isLoading}) = _$_BookingStateData;

  @override
  Booking get booking;
  @override
  bool get hasLoadingError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateDataCopyWith<_$_BookingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
