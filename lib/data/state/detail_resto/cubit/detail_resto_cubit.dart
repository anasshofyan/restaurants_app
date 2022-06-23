import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detail_resto_state.dart';

class DetailRestoCubit extends Cubit<DetailRestoState> {
  DetailRestoCubit() : super(DetailRestoInitial());
}
