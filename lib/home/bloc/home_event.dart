part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HideCardNumberEvent extends HomeEvent{
  final bool isHide;

  HideCardNumberEvent( this.isHide);

}