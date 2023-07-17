import 'package:flutter/material.dart';
import 'package:office/Pages/numberlistprovider.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

// ignore: camel_case_types
class State_2 extends StatefulWidget {
  const State_2({super.key,});

  @override
  State<State_2> createState() => _State_2State();
}

// ignore: camel_case_types
class _State_2State extends State<State_2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<numberlistprovider>(
      builder: (context, numberList, child) => Scaffold(
        appBar: AppBar(
          title: const Text("State 2"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('data'),
          onPressed: () {
              setState(() {
               numberList.add();
            });
          },
        ),
        body: Column(
          children: [
           Text(
              "Last Push :${numberList.number.last}",
              style:const TextStyle(color: Colors.purple, fontSize: 40),
            ),
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numberList.number.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Center(
                        child: Text(
                      numberList.number[index].toString(),
                      style: const TextStyle(fontSize: 25),
                    )),
                  );
                },
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
