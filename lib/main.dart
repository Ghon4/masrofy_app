import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: '1',
      title: 'Shoe',
      amount: 20.45,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'bag',
      amount: 50.45,
      dateTime: DateTime.now(),
    ),
  ];

  void _addnewtransaction(String TXtitle, double TXamount) {
    final newTX = Transaction(
      title: TXtitle,
      amount: TXamount,
      dateTime: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _usertransactions.add(newTX);
    });
  }

  void _startaddingnewtransction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewinpTransaction(_addnewtransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Masrofy'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () => _startaddingnewtransction(context)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Card(
                  child: Text('chart'),
                  elevation: 15.0,
                ),
              ), //chart
              TransactionList(_usertransactions),
              //  NewinpTransaction(_addnewtransaction),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _startaddingnewtransction(context)
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) {
            //     return StatefulBuilder(
            //       builder: (BuildContext context, StateSetter setState) {
            //         return Column(
            //           children: [],
            //         );
            //       },
            //     );
            //   },
            // );

            ),
      ),
    );
  }
}
//=> _startaddingnewtransction(context)
