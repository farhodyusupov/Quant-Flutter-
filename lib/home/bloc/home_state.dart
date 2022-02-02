part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class HideCardSummaState extends HomeState{
  final bool isHide;

  HideCardSummaState(this.isHide);
}