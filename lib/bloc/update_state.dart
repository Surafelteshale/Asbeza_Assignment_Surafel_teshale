import 'package:asbeza/model/item.dart';
//part of 'update_bloc.dart';
import 'package:asbeza/services/apiService.dart';


abstract class UpdateState {}

class UpdateInitial extends UpdateState {

  @override
  // TODO: implement props
  List<Object> get props => [];
}


class UpdateLoadingState extends UpdateState {

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class UpdateSuccessState extends UpdateState {
  Item item;
  UpdateSuccessState(
      this.item,
      );

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class UpdateFailState extends UpdateState {
  String message;

  UpdateFailState(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [];
}
