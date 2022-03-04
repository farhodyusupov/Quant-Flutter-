part of '../../../bloc/home_bloc/home_bloc.dart';

@immutable
abstract class HomeEvent {}


class HideCardSummaEvent extends HomeEvent{
  final bool isHide;

  HideCardSummaEvent(this.isHide);
}

class   ChangeThemeEvent extends HomeEvent{
    final int themeNumber;

    ChangeThemeEvent(this.themeNumber);
}