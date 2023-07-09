import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'pieces_card.dart';
import 'button.dart';

class inputPage extends StatefulWidget {
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Color maleColor = Color(0xFF1D1E33);
  Color femaleColor = Color(0xFF1D1E33);
  int height = 150;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleColor = Color(0xFF1D1E33);
                        maleColor = Color(0xFF111328);
                      });
                    },
                    child: Reusable(
                      color: maleColor,
                      child: child_card(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleColor = Color(0xFF111328);
                        maleColor = Color(0xFF1D1E33);
                      });
                    },
                    child: Reusable(
                      color: femaleColor,
                      child: child_card(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable(
              color: Color(0xFF1D1E33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 184, 182, 182),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text("cm"),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      activeColor: const Color.fromARGB(255, 190, 84, 76),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    color: Color(0xFF1D1E33),
                    child: Button(
                      text: "WEIGHT",
                      variable: 50,
                      description: "Kg",
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    color: Color(0xFF1D1E33),
                    child: Button(
                      text: "AGE",
                      variable: 20,
                      description: "Year",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Color.fromARGB(255, 184, 182, 182),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
