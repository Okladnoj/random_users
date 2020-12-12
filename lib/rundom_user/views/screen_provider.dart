import 'package:block_api/rundom_user/cubit/api_user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen_users.dart';
import 'components/screen_waiter.dart';

class BlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiUserCubit(),
        ),
      ],
      child: BlocBuilder<ApiUserCubit, ApiUserState>(builder: (context, userState) {
        if ((userState?.listUser?.length ?? 0) > 0) {
          return Scaffold(
            body: ScreenUsers(
              userState: userState,
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () {
                context.read<ApiUserCubit>().getUser();
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          );
        } else {
          return ScreenWaiter();
        }
      }),
    );
  }
}
