part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}


class HideCardSummaEvent extends HomeEvent{
  final bool isHide;

  HideCardSummaEvent(this.isHide);
}