import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:presser/model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<Presser>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider title'),
      ),
      body: Consumer<Presser>(
        builder: (context, value, child) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times'),
              Text('${count.presser}'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () {
                        count.increment();
                      }),
                  FloatingActionButton(
                      child: const Icon(Icons.minimize),
                      onPressed: () {
                        count.increment();
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
