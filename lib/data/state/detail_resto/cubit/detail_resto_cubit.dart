import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurants_app/data/model/resto_detail_model.dart';
import 'package:restaurants_app/data/repositories/detail_resto_repositories.dart';

part 'detail_resto_state.dart';

class DetailRestoCubit extends Cubit<DetailRestoState> {
  DetailRestoCubit() : super(DetailRestoInitial());

  final DetailRestoRepositories _detailRestoRepositories =
      DetailRestoRepositories();

  Future<void> getDetailResto(id) async {
    try {
      emit(DetailRestoLoading());

      final response = await _detailRestoRepositories.getDetailResto(id);

      emit(DetailRestoSuccess(response));
    } catch (error) {
      emit(DetailRestoFailure(error.toString()));
    }
  }
}
