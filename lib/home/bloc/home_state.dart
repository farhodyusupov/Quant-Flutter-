part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HideCardNumberState extends HomeState{
  final bool isHide;
  HideCardNumberState( this.isHide);
}
