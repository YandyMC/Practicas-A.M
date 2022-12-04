import 'package:flutter/material.dart';
import '../styles.dart';
import '../model/email.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;
// importacion del modelo de email de model/email.dark
  const EmailWidget(
      {Key? key,
      required this.email,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(email.id);
      },
      onLongPress: () {
        onLongPress(email.id);
      },
      onTap: () {
        onTap(email);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 80.0,
        child: Row(
          children: [
            const Expanded(
              flex: 4,
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.black54,
                    size: 50.0,
                  )
                ),
            Expanded(
              flex: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(email.dateTime.toString().substring(0, 16),
                      style: date),
                  Text(email.from, style: remite),
                  Text(email.subject, style: subject),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 13.0,
                decoration: BoxDecoration(
                    color: email.read ? Colors.transparent : background,
                    shape: BoxShape.circle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
