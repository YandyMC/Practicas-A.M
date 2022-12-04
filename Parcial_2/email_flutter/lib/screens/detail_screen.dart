import 'package:flutter/material.dart';

import '../styles.dart';
import '../model/email.dart';

class DetailScreen extends StatelessWidget {
  final Email email;

  const DetailScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(email.subject),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('De: ${email.from}', style: remite),
              const SizedBox(height: 10.0,),
              const Divider(color: line,thickness: 3,),
              const SizedBox(height: 10.0),
              Text(email.subject, style: subject),
              const SizedBox(height: 5.0),
              Text(email.dateTime.toString().substring(0, 16), style: date, textAlign: TextAlign.right),
              const SizedBox(height: 10.0),
              const Divider(color: line, thickness: 3,),
              const SizedBox(height: 10.0),
              Text(email.body, style: bodyText),
            ],
          ),
        ));
  }
}
