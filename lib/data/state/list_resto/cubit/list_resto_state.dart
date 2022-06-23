part of 'list_resto_cubit.dart';

@immutable
abstract class ListRestoState {}

class ListRestoInitial extends ListRestoState {}

class ListRestoLoading extends ListRestoState {}

class ListRestoSuccess extends ListRestoState {
  ListRestoSuccess(this.data);

  final ModelItemRes data;

  // @override
  List<Object> get props => [data];
}

class ListRestoFailure extends ListRestoState {
  ListRestoFailure(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
