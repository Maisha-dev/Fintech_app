import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today, Oct 17'),
                Row(
                  children: [
                    Text('All Transactions'),
                  ],
                ),
              ],
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.fitness_center,
                color: Colors.purpleAccent,
              ),
            ),
            title: Text('Gym'),
            subtitle: Text('Payment'),
            trailing: Text(
              '-\$45.99',
              // style: TextStyle(color: Colors.red),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.account_balance,
                color: Colors.teal,
              ),
            ),
            title: Text('Bank of America'),
            subtitle: Text('Deposite'),
            trailing: Text(
              '+\$1,325.00',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.send,
                color: Colors.orangeAccent,
              ),
            ),
            title: Text('To Muhammad Aaseeyah'),
            subtitle: Text('Sent'),
            trailing: Text(
              '-\$699.00',
              // style: TextStyle(color: Colors.teal),
            ),
          )
        ],
      ),
    );
  }
}
