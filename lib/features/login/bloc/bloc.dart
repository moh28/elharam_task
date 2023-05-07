import 'package:bloc/bloc.dart';
import 'package:elharam_elrabe3/features/login/bloc/states.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../core/app_storage/cache_helper.dart';
import '../../../core/app_storage/models/user.dart';
import '../../../core/network/server_gate.dart';
import 'events.dart';

class LogInBloc extends Bloc<LogInEvents, LogInStates> {
  ServerGate serverGate=ServerGate();
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  UserDataModel? userDataModel;

  LogInBloc() : super((LogInInitialState())) {
    on<LogInPostEvent>(_postLogIn);
  }

  Future<void> _postLogIn(
      LogInPostEvent event, Emitter<LogInStates> emit) async {
    emit(LogInLoadingState());
    try {
      final resp = await serverGate.sendToServer(url: 'login', body: {
        'phone': '966${phoneController.text}',
        'password': passwordController.text,
        'device_token': 'test',
        'type': 'ios',
        'user_type': 'client'
      });
      if(resp.success){

        final model = UserDataModel.fromJson(resp.response?.data?["data"]??{});
        CacheHelper.setUserToken(model.token);
        emit(LogInSuccessState(userDataModel));

      }else{
        emit(LogInErrorState());
      }
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(LogInErrorState());
    }
  }
}