import 'package:bloc/bloc.dart';
import "package:equatable/equatable.dart";

abstract class CubitState extends Equatable {}

class InititalState extends CubitState {
  late int x;
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
