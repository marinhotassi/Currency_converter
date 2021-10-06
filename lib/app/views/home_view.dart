import 'package:conversor_moeda/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.jpg',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 30),
              CurrencyBox(),
              SizedBox(height: 50),
              CurrencyBox(),
              SizedBox(height: 50),
              ElevatedButton(
                color: Colors.amber,
                onPressed: () {},
                child: const Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
