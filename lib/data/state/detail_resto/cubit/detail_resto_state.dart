part of 'detail_resto_cubit.dart';

@immutable
abstract class DetailRestoState {}

class DetailRestoInitial extends DetailRestoState {}

class DetailRestoLoading extends DetailRestoState {}

class DetailRestoSuccess extends DetailRestoState {
  DetailRestoSuccess(this.data);

  final RestoDetailRes data;

  @override
  List<Object> get props => [data];
}

class DetailRestoFailure extends DetailRestoState {
  DetailRestoFailure(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
