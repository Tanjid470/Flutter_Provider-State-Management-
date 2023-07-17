import 'package:flutter/material.dart';
import 'package:office/Pages/numberlistprovider.dart';
import 'package:office/Pages/State_2.dart';
import 'package:provider/provider.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  @override
  Widget build(BuildContext context) {
    return Consumer<numberlistprovider>(
      builder: (context, numberListClass, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
               numberListClass.add();
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Text(
              "Last Push :${numberListClass.number.last}",
              style: const TextStyle(color: Colors.purple, fontSize: 40),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: numberListClass.number.length,
              itemBuilder: (context, index) {
                return Center(
                    child: Text(
                         numberListClass.number[index].toString(),
                  style: const TextStyle(fontSize: 35),
                ));
              },
            )),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const State_2())));
                },
                child: const Text('Go to Second tate'))
          ],
        ),
      
      ),
    );
  }
}
