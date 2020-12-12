import 'package:block_api/rundom_user/models/user.dart';
import 'package:flutter/material.dart';

import 'components/form_info.dart';

class ScreenUser extends StatelessWidget {
  final RundomUser userState;

  const ScreenUser({
    Key key,
    @required this.userState,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF999999),
      appBar: AppBar(
        backgroundColor: Color(0xFF999999),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.chevron_left_outlined, size: 30),
            ),
            GestureDetector(
              child: Text("Back"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.network(
                userState.pictureLarge,
                fit: BoxFit.contain,
              ),
            ),
            lineInfo('Title: ${userState.title}\nFirstName: ${userState.first}\nLastName: ${userState.last}', textAlign,
                alignment, padding),
            lineInfo('Age: ${userState.age}\nGender: ${userState.gender}', textAlign, alignment, padding),
            lineInfo('Country: ${userState.country}\nCity: ${userState.city}', textAlign, alignment, padding),
            lineInfo('Phone: ${userState.phone}\nEmail: ${userState.email}', textAlign, alignment, padding),
            lineInfo('ID: ${userState.id}', textAlign, alignment, padding),
          ],
        );
      }),
    );
  }
}

TextAlign textAlign = TextAlign.start;
Alignment alignment = Alignment.centerLeft;
EdgeInsets padding = const EdgeInsets.only(left: 25);
