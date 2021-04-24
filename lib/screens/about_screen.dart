import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ABOUT'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Dr. Babasaheb Ambedkar Technological University',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Guided By - Prof. Ekta Meshram',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            ParticipantCard(
              name: 'ANIKET SUBHASH UJGARE',
              prn: '1930331246024',
            ),
            ParticipantCard(
              name: 'PRAVIN MOHAN SURYAWANSHI',
              prn: '1930331246051',
            ),
            ParticipantCard(
              name: 'TUSHAR GOVIND SHINDE',
              prn: '1930331246040',
            ),
            ParticipantCard(
              name: 'VAIBHAV LAXMAN GHADGE',
              prn: '1930331246053',
            ),
          ],
        ),
      ),
    );
  }
}

class ParticipantCard extends StatelessWidget {
  ParticipantCard({this.name, this.prn});
  final String name;
  final String prn;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        color: kBottomContainerColor,
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            color: kActivateCardColor,
          ),
          title: Text(
            name,
            style: TextStyle(
                color: kInactiveCardColor, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'PRN: $prn',
            style: TextStyle(
              color: kActivateCardColor,
            ),
          ),
        ),
      ),
    );
  }
}
