// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Media> get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaStateCopyWith<MediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStateCopyWith<$Res> {
  factory $MediaStateCopyWith(
          MediaState value, $Res Function(MediaState) then) =
      _$MediaStateCopyWithImpl<$Res, MediaState>;
  @useResult
  $Res call({BlocStatus status, List<Media> data, String? message});
}

/// @nodoc
class _$MediaStateCopyWithImpl<$Res, $Val extends MediaState>
    implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaStateImplCopyWith<$Res>
    implements $MediaStateCopyWith<$Res> {
  factory _$$MediaStateImplCopyWith(
          _$MediaStateImpl value, $Res Function(_$MediaStateImpl) then) =
      __$$MediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Media> data, String? message});
}

/// @nodoc
class __$$MediaStateImplCopyWithImpl<$Res>
    extends _$MediaStateCopyWithImpl<$Res, _$MediaStateImpl>
    implements _$$MediaStateImplCopyWith<$Res> {
  __$$MediaStateImplCopyWithImpl(
      _$MediaStateImpl _value, $Res Function(_$MediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$MediaStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MediaStateImpl extends _MediaState {
  const _$MediaStateImpl(
      {this.status = BlocStatus.Loading,
      final List<Media> data = const [],
      this.message})
      : _data = data,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<Media> _data;
  @override
  @JsonKey()
  List<Media> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'MediaState(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data), message);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      __$$MediaStateImplCopyWithImpl<_$MediaStateImpl>(this, _$identity);
}

abstract class _MediaState extends MediaState {
  const factory _MediaState(
      {final BlocStatus status,
      final List<Media> data,
      final String? message}) = _$MediaStateImpl;
  const _MediaState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<Media> get data;
  @override
  String? get message;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
