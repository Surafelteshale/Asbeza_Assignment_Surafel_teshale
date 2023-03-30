import 'dart:async';
import 'dart:developer';

import 'package:asbeza/bloc/update_state.dart';
import 'package:bloc/bloc.dart';
import 'package:asbeza/model/item.dart';

import '../model/item.dart';
import '../services/apiService.dart';

part 'update_event.dart';
//part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  List history = [];
  dynamic _service = Service();
  UpdateBloc() : super(UpdateInitial()) {
    on<GetDataButtonPressed>((event, emit) async {
      emit(UpdateLoadingState());
      final item = await item_api().fetchActivity();
      emit(UpdateSuccessState(item!,_service.read_item()));
    });
    on<HistoryEvent>((event, emit) => {history.add(event.data), _service.save_item(event.data)
    });
  }
}
