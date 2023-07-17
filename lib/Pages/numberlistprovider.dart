import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class numberlistprovider extends ChangeNotifier{
   List<int> number =[1,2,3,4];
   void add(){
    int last=number.last;
    number.add(last+1);
    print(number);
   }
   @override
     notifyListeners(); 
}