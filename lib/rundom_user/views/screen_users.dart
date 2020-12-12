import 'package:block_api/rundom_user/cubit/api_user_cubit.dart';
import 'package:flutter/material.dart';

import 'components/card_user.dart';

class ScreenUsers extends StatelessWidget {
  final ApiUserState userState;
  const ScreenUsers({
    Key key,
    @required this.userState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF778EA8),
      child: LayoutBuilder(builder: (context, constraints) {
        int _crossAxisCount = MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5;
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount,
            childAspectRatio: 0.55,
          ),
          itemCount: userState.listUser.length,
          itemBuilder: (BuildContext context, int index) {
            return CardUser(userState: userState.listUser.elementAt(index));
          },
        );
      }),
    );
  }
}
