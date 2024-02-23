import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({Key? key}) : super(key: key);

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  

    void _toggleCheckbox(int checkboxIndex) {
    setState(() {
      isChecked1 = (checkboxIndex == 1) ? true : false;
      isChecked2 = (checkboxIndex == 2) ? true : false;
      isChecked3 = (checkboxIndex == 3) ? true : false;
      isChecked4 = (checkboxIndex == 4) ? true : false;
      isChecked5 = (checkboxIndex == 5) ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            Text('1'),
            Checkbox(
            activeColor: Colors.red,
            checkColor: Colors.white,
            value: isChecked1,
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = value!;
                if (isChecked1) _toggleCheckbox(1);
              });
            },
          ),
        ],),
        Column(children: [
            Text('2'),
            Checkbox(
            activeColor: Colors.orange,
            checkColor: Colors.white,
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {
                isChecked2 = value!;
                if (isChecked2) _toggleCheckbox(2);
              });
            },
          ),
        ],),
         Column(children: [
            Text('3'),
            Checkbox(
            activeColor: Color.fromARGB(255, 29, 180, 34),
            checkColor: Colors.white,
            value: isChecked3,
            onChanged: (bool? value) {
              setState(() {
                isChecked3 = value!;
                if (isChecked3) _toggleCheckbox(3);
              });
            },
          ),
         ],),
         Column(children: [
            Text('4'),
            Checkbox(
            activeColor: const Color.fromARGB(255, 2, 52, 93),
            checkColor: Colors.white,
            value: isChecked4,
            onChanged: (bool? value) {
              setState(() {
                isChecked4 = value!;
                if (isChecked4) _toggleCheckbox(4);
              });
            },
          ),
         ],),
         Column(children: [
           Text('5'),
           Checkbox(
            activeColor: const Color.fromARGB(255, 100, 11, 116),
            checkColor: Colors.white,
            value: isChecked5,
            onChanged: (bool? value) {
              setState(() {
                isChecked5 = value!;
                if (isChecked5) _toggleCheckbox(5);
              });
            },
          ),
         ],)
        ],
      ),
    );
  }
}
