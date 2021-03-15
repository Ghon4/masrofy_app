import 'package:flutter/material.dart';

class NewinpTransaction extends StatelessWidget {
  final Function addTX;
  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController amountcontroller = TextEditingController();

  NewinpTransaction(this.addTX);

  void Submitdata() {
    final enteredtitle = titlecontroller.text;
    final enteredamount = double.parse(amountcontroller.text);
    if (enteredtitle.isEmpty || enteredamount <= 0) {
      return;
    }

    addTX(
      enteredtitle,
      enteredamount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
          controller: titlecontroller,
          onSubmitted: (_) => Submitdata(),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Amount'),
          controller: amountcontroller,
          keyboardType: TextInputType.number,
          onSubmitted: (_) => Submitdata(),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          child: Text(
            'Add Transaction',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {
            Submitdata();
          },
        ),
      ],
    );
  }
}
