import 'package:bloc/bloc.dart';
import 'package:block_api/rundom_user/models/user.dart';
import 'package:block_api/rundom_user/providers/provider.dart';
import 'package:meta/meta.dart';

part 'api_user_state.dart';

class ApiUserCubit extends Cubit<ApiUserState> {
  ApiUserCubit() : super(ApiUserInitial()) {
    getUser();
  }
  getUser([int numberUsers = 10]) async {
    Set<RundomUser> listRandomUser = <RundomUser>{};
    for (var i = 0; listRandomUser.length < numberUsers; i++) {
      RundomUser _rundomUser = RundomUser.fromJson(await getJson());
      listRandomUser.add(_rundomUser);
    }
    emit(ApiUserInitial(listRandomUser: listRandomUser));
  }
}
