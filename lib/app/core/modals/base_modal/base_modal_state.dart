part of 'base_modal_cubit.dart';

@freezed
class BaseModalState with _$BaseModalState {
  const factory BaseModalState.initial({
    @Default(BooleanStatus.active) BooleanStatus modalStatus,
  }) = _Initial;

}
