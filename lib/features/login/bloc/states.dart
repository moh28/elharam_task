
import '../../../core/app_storage/models/user.dart';

class LogInStates {}

class LogInInitialState extends LogInStates {}

class LogInLoadingState extends LogInStates {}

class LogInSuccessState extends LogInStates {
  UserDataModel? userDataModel;
  LogInSuccessState(this.userDataModel);
}

class LogInErrorState extends LogInStates {}
