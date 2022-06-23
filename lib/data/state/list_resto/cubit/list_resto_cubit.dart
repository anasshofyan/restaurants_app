import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurants_app/data/model/model_item.dart';
import 'package:restaurants_app/data/repositories/list_resto_repositories.dart';

part 'list_resto_state.dart';

class ListRestoCubit extends Cubit<ListRestoState> {
  ListRestoCubit() : super(ListRestoInitial());

  final ListRestoRepositories _listRestoRepositories = ListRestoRepositories();

  Future<void> getListResto() async {
    try {
      emit(ListRestoLoading());

      final response = await _listRestoRepositories.getListResto();

      emit(ListRestoSuccess(response));
    } catch (error) {
      emit(ListRestoFailure(error.toString()));
    }
  }
}
