part of 'search_resto_cubit.dart';

@immutable
abstract class SearchRestoState {}

class SearchRestoInitial extends SearchRestoState {}


class SearchRestoLoading extends SearchRestoState {}

class SearchRestoSuccess extends SearchRestoState {
  SearchRestoSuccess(this.data);

  final SearchRestoRes data;

  @override
  List<Object> get props => [data];
}

class SearchRestoFailure extends SearchRestoState {
  SearchRestoFailure(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
