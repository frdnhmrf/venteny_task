// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_control_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoControlState {
  BlocStatus get status => throw _privateConstructorUsedError;
  VideoPlayerController? get controller => throw _privateConstructorUsedError;
  Media? get media => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isShowButton => throw _privateConstructorUsedError;

  /// Create a copy of VideoControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoControlStateCopyWith<VideoControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoControlStateCopyWith<$Res> {
  factory $VideoControlStateCopyWith(
          VideoControlState value, $Res Function(VideoControlState) then) =
      _$VideoControlStateCopyWithImpl<$Res, VideoControlState>;
  @useResult
  $Res call(
      {BlocStatus status,
      VideoPlayerController? controller,
      Media? media,
      bool isPlaying,
      bool isShowButton});
}

/// @nodoc
class _$VideoControlStateCopyWithImpl<$Res, $Val extends VideoControlState>
    implements $VideoControlStateCopyWith<$Res> {
  _$VideoControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? controller = freezed,
    Object? media = freezed,
    Object? isPlaying = null,
    Object? isShowButton = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowButton: null == isShowButton
          ? _value.isShowButton
          : isShowButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoControlStateImplCopyWith<$Res>
    implements $VideoControlStateCopyWith<$Res> {
  factory _$$VideoControlStateImplCopyWith(_$VideoControlStateImpl value,
          $Res Function(_$VideoControlStateImpl) then) =
      __$$VideoControlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      VideoPlayerController? controller,
      Media? media,
      bool isPlaying,
      bool isShowButton});
}

/// @nodoc
class __$$VideoControlStateImplCopyWithImpl<$Res>
    extends _$VideoControlStateCopyWithImpl<$Res, _$VideoControlStateImpl>
    implements _$$VideoControlStateImplCopyWith<$Res> {
  __$$VideoControlStateImplCopyWithImpl(_$VideoControlStateImpl _value,
      $Res Function(_$VideoControlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? controller = freezed,
    Object? media = freezed,
    Object? isPlaying = null,
    Object? isShowButton = null,
  }) {
    return _then(_$VideoControlStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowButton: null == isShowButton
          ? _value.isShowButton
          : isShowButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VideoControlStateImpl extends _VideoControlState {
  const _$VideoControlStateImpl(
      {this.status = BlocStatus.Initial,
      this.controller,
      this.media,
      this.isPlaying = false,
      this.isShowButton = false})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final VideoPlayerController? controller;
  @override
  final Media? media;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isShowButton;

  @override
  String toString() {
    return 'VideoControlState(status: $status, controller: $controller, media: $media, isPlaying: $isPlaying, isShowButton: $isShowButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoControlStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isShowButton, isShowButton) ||
                other.isShowButton == isShowButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, controller, media, isPlaying, isShowButton);

  /// Create a copy of VideoControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoControlStateImplCopyWith<_$VideoControlStateImpl> get copyWith =>
      __$$VideoControlStateImplCopyWithImpl<_$VideoControlStateImpl>(
          this, _$identity);
}

abstract class _VideoControlState extends VideoControlState {
  const factory _VideoControlState(
      {final BlocStatus status,
      final VideoPlayerController? controller,
      final Media? media,
      final bool isPlaying,
      final bool isShowButton}) = _$VideoControlStateImpl;
  const _VideoControlState._() : super._();

  @override
  BlocStatus get status;
  @override
  VideoPlayerController? get controller;
  @override
  Media? get media;
  @override
  bool get isPlaying;
  @override
  bool get isShowButton;

  /// Create a copy of VideoControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoControlStateImplCopyWith<_$VideoControlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
