import 'package:flutter/material.dart';

class dd extends ChangeNotifier
{
  double bmi=0;
  double height=0;
  String gender="mm";
  String gender2="dd";
  TextEditingController heightco = TextEditingController();
  TextEditingController weightco = TextEditingController();


 void ab(String a)
 {
   gender = a.toString();

   notifyListeners();
   // print(a);
 }
 void cd(String b)
 {
   gender2 = b.toString();
   notifyListeners();
 }

  void change(String a,String b)
  {
    //w=double.parse(b);
    height=double.parse(a)*double.parse(a) / 10;
    bmi= double.parse(b)/height;
    print("$a");
    print("$b");
    print("$bmi");
    notifyListeners();
  }

}
