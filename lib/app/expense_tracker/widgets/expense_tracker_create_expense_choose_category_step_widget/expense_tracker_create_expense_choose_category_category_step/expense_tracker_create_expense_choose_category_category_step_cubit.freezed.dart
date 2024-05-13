// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_tracker_create_expense_choose_category_category_step_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState {
  int? get selectedIndex => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get containerData =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWith<
          ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWith<
    $Res> {
  factory $ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWith(
          ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState value,
          $Res Function(
                  ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState)
              then) =
      _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWithImpl<
          $Res, ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState>;
  @useResult
  $Res call({int? selectedIndex, List<Map<String, dynamic>>? containerData});
}

/// @nodoc
class _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWithImpl<
        $Res,
        $Val extends ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState>
    implements
        $ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWith<
            $Res> {
  _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? containerData = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      containerData: freezed == containerData
          ? _value.containerData
          : containerData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements
        $ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWith<
            $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? selectedIndex, List<Map<String, dynamic>>? containerData});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepStateCopyWithImpl<
        $Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? containerData = freezed,
  }) {
    return _then(_$InitialImpl(
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      containerData: freezed == containerData
          ? _value._containerData
          : containerData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.selectedIndex, final List<Map<String, dynamic>>? containerData})
      : _containerData = containerData;

  @override
  final int? selectedIndex;
  final List<Map<String, dynamic>>? _containerData;
  @override
  List<Map<String, dynamic>>? get containerData {
    final value = _containerData;
    if (value == null) return null;
    if (_containerData is EqualUnmodifiableListView) return _containerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState.initial(selectedIndex: $selectedIndex, containerData: $containerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._containerData, _containerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex,
      const DeepCollectionEquality().hash(_containerData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)
        initial,
  }) {
    return initial(selectedIndex, containerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)?
        initial,
  }) {
    return initial?.call(selectedIndex, containerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? selectedIndex, List<Map<String, dynamic>>? containerData)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedIndex, containerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial
    implements ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState {
  const factory _Initial(
      {final int? selectedIndex,
      final List<Map<String, dynamic>>? containerData}) = _$InitialImpl;

  @override
  int? get selectedIndex;
  @override
  List<Map<String, dynamic>>? get containerData;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
