part of 'current_position_cubit.dart';

@freezed
class CurrentPositionState with _$CurrentPositionState {
  const factory CurrentPositionState.initial() = Initial;
  const factory CurrentPositionState.currentPositionLoaded(
    Position currentPosition,
    String currentAddress,
  ) = CurrentPositionLoaded;
  const factory CurrentPositionState.currentPositionNotLoaded() =
      CurrentPositionNotLoaded;
}
