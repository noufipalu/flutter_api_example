import 'package:datainflutter/src/controller/records_cubit/cubit/records_repository.dart';
import 'package:datainflutter/src/model/records_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'records_state.dart';

class RecordsCubit extends Cubit<RecordsState> {
  RecordsCubit() : super(RecordsInitial());

  getRecordsData() async {
    emit(RecordsLoading());

    RecordsRepository repository = RecordsRepository();
    List<dynamic>? data = await repository.getData();

    if (data == null) {
      emit(RecordsError());
      return;
    }

    List<RecordsModel> records =
        data.map((item) => RecordsModel.fromJson(item)).toList();

    emit(RecordsSuccess(records: records));
  }
}
