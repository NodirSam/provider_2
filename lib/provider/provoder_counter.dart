import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/provider/counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sen shuch marta FABni bosding"),
            Text("${context.watch<CounterViewModel>().count}", style: const TextStyle(fontSize: 28),),
            IconButton(
              onPressed: (){
                context.read<CounterViewModel>().decrement();
              },
              icon: Icon(Icons.map),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<CounterViewModel>().increment();
        },
        tooltip: "Increment ",
        child: Icon(Icons.add),
      ),
    );
  }
}
