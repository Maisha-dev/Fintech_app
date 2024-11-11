import 'package:flutter/material.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  String selectedProvider = "Bank of America";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Top Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bank Transfer',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 17,
            ),
            PaymentProvider(
                name: 'Bank of America',
                account: '**** **** **** 1234',
                isSelected: selectedProvider == 'Bank of America',
                onChanged: (value) {
                  if (value == true) {
                    selectedProvider == 'Bank of America';
                  }
                }),
            PaymentProvider(
                name: 'U.S Bank',
                account: '**** **** **** 1234',
                isSelected: selectedProvider == 'U.S Bank',
                onChanged: (value) {
                  if (value == true) {
                    selectedProvider == 'U.S  Bank ';
                  }
                }),
            Text(
              'Other',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 17,
            ),
            PaymentProvider(
                name: 'PayPal',
                account: 'Easy payment',
                isSelected: selectedProvider == 'PayPal',
                onChanged: (value) {
                  if (value == true) {
                    selectedProvider == 'PayPal ';
                  }
                }),
            PaymentProvider(
                name: 'Apple pay',
                account: '**** **** **** 1234',
                isSelected: selectedProvider == 'Apple pay',
                onChanged: (value) {
                  if (value == true) {
                    selectedProvider == 'Apple pay';
                  }
                }),
            PaymentProvider(
                name: 'Google pay',
                account: '**** **** **** 1234',
                isSelected: selectedProvider == 'Google pay',
                onChanged: (value) {
                  if (value == true) {
                    selectedProvider == 'Google pay ';
                  }
                }),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(double.maxFinite, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: const Text(
                'Confirm',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentProvider extends StatelessWidget {
  const PaymentProvider(
      {super.key,
      required this.name,
      required this.account,
      required this.isSelected,
      required this.onChanged});
  final String name;
  final String account;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
          ),
          title: Text(name),
          subtitle: Text(account),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio.adaptive(
              value: true,
              groupValue: isSelected,
              onChanged: onChanged,
              activeColor: Color.fromARGB(255, 16, 80, 98),
            ),
          ),
          contentPadding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black12)),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
