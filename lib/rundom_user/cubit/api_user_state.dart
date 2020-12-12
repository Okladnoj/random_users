part of 'api_user_cubit.dart';

@immutable
abstract class ApiUserState {
  Set<RundomUser> get listUser;
}

class ApiUserInitial extends ApiUserState {
  final Set<RundomUser> _listRandomUser;
  ApiUserInitial({Set<RundomUser> listRandomUser}) : _listRandomUser = listRandomUser;

  @override
  Set<RundomUser> get listUser => _listRandomUser;
}
