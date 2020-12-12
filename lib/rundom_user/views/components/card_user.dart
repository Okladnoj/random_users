import 'package:block_api/rundom_user/models/user.dart';
import 'package:flutter/material.dart';

import '../screen_user.dart';
import 'form_info.dart';

class CardUser extends StatelessWidget {
  const CardUser({
    Key key,
    @required this.userState,
  }) : super(key: key);

  final RundomUser userState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return ScreenUser(
            userState: userState,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
        decoration: BoxDecoration(color: Color(0xFF24FF41), borderRadius: BorderRadius.circular(10)),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(userState.pictureMedium),
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    lineInfo('${userState.title} ${userState.first} ${userState.last}'),
                    lineInfo('Age: ${userState.age}'),
                    lineInfo('${userState.country}'),
                    lineInfo('${userState.city}'),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
