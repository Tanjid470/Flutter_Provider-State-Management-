import 'package:flutter/material.dart';
import 'package:office/Pages/numberlistprovider.dart';
import 'package:office/Pages/state_1.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) =>numberlistprovider(),),
      ],
      child: const MaterialApp(
        home: StateManagement(),
      ),
    );
  }
}
  