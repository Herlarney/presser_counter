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
    final dater = Provider.of<Date>(context);
    final count = Provider.of<Presser>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times'),
          Text('${count.presser}'),
          const SizedBox(
            height: 20,
          ),
          Consumer<Presser>(
            builder: (context, value, child) => Row(
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
                      count.decrement();
                    }),
              ],
            ),
          ),
          Consumer<Date>(
            builder: (context, date, child) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 30),
                  child: GestureDetector(
                    onTap: (() {
                      dater.printDate();
                    }),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          'Print date',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Container(
                    color: Colors.transparent,
                    height: 80,
                    width: 80,
                    child: Text('${dater.whatsDate}'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: GestureDetector(
                    onTap: (() {
                      dater.clearDate();
                    }),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          'clear date',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
