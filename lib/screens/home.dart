import 'package:fintech_app/widgets/transaction_list.dart';
import 'package:fintech_app/widgets/action_button.dart';
import 'package:fintech_app/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 16, 88, 98),
      body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back!',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Aishat Hamzat',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 165),
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        //ActionButton
                        ActionButton(),
                        SizedBox(
                          height: 30,
                        ),
                        //TreansactionList
                        TransactionList()
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
