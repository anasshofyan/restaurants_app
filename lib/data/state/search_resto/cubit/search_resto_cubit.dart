import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurants_app/data/model/search_resto_model.dart';
import 'package:restaurants_app/data/repositories/search_resto_repositories.dart';

part 'search_resto_state.dart';

class SearchRestoCubit extends Cubit<SearchRestoState> {
  SearchRestoCubit() : super(SearchRestoInitial());

  final SearchRestoRepositories _searchRestoRepositories = SearchRestoRepositories();


    Future<void> getSearchResto(query) async {
    try {
      emit(SearchRestoLoading());

      final response = await _searchRestoRepositories.getSearchResto(query);

      emit(SearchRestoSuccess(response));
    } catch (error) {
      emit(SearchRestoFailure(error.toString()));
    }
  }
}
