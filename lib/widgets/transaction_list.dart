import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(transactions[index].dateTime),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:masrofy_app/models/transaction.dart';
//
// class TransactionList extends StatelessWidget {
//   final List<Transaction> transactions;
//   TransactionList(this.transactions);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           return Card(
//             child: Row(
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 8,
//                   ),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.black,
//                       width: 2,
//                     ),
//                   ),
//                   child: Text(
//                     '\$${transactions[index].amount}',
//                     // tx.amount.toString(),
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(20),
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         child: Text(
//                           '${transactions[index].title}',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black45,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         DateFormat.yMMMd().format(transactions[index].dateTime),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//         itemCount: transactions.length,
//       ),
//     );
//   }
// }
