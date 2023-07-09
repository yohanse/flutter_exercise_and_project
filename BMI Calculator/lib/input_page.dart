import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'pieces_card.dart';

class inputPage extends StatefulWidget {
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Color maleColor = Color(0xFF1D1E33);
  Color femaleColor = Color(0xFF1D1E33);
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
              child: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    color: Color(0xFF1D1E33),
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    color: Color(0xFF1D1E33),
                    child: Container(),
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
