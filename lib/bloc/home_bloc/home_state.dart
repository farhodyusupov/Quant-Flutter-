part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class HideCardSummaState extends HomeState{
  final bool isHide;

  HideCardSummaState(this.isHide);
}


class ChangeThemeState extends HomeState{
  final int themeNumber;
  ChangeThemeState(this.themeNumber);
}

class OplataWidgetState extends HomeState {
  final String widgetName;

  OplataWidgetState({required this.widgetName});
}