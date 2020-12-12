import 'package:flutter/material.dart';

class ScreenWaiter extends StatelessWidget {
  const ScreenWaiter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xFFB5FF79),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Мы загружаем пользователей',
              style: TextStyle(
                  color: Color(0xFFFC3939),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  shadows: List.generate(
                    3,
                    (index) => Shadow(color: Color(0xFF000000), blurRadius: 6.0, offset: Offset(5, 2)),
                  )),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFA8A8)),
                strokeWidth: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
