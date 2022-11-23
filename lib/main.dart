import 'package:bmi2/page2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: ChangeNotifierProvider(
    create: (context) => dd(),
    child: demo(),
  )));
}

class demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dd d = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          TextField(
            key: ValueKey("HEIGHT_FIELD"),
            controller: d.heightco,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "Enter Height",
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Height",
                labelStyle: TextStyle(color: Colors.black, fontSize: 18)),
          ),
          RadioListTile(
            title: Text("MM"),
            value: "mm",
            groupValue: d.gender,
            onChanged: (value) {
              d.ab(value.toString());
            },
          ),
          RadioListTile(
            title: Text("CM"),
            value: "cm",
            groupValue: d.gender,
            onChanged: (value) {
              d.ab(value.toString());
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            key: ValueKey("WEIGHT_FIELD"),
            controller: d.weightco,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "Enter Weight",
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Weight",
                labelStyle: TextStyle(color: Colors.black, fontSize: 18)),
          ),
          Column(
            children: [
              RadioListTile(
                title: Text("KG"),
                value: "dd",
                groupValue: d.gender2,
                onChanged: (value) {
                  d.cd(value.toString());
                },
              ),
              RadioListTile(
                title: Text("GM"),
                value: "cc",
                groupValue: d.gender2,
                onChanged: (value) {
                  d.cd(value.toString());
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                d.change(d.heightco.text, d.weightco.text);
              },
              child: Text("Calculator")),
          Text("${d.bmi}"),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
