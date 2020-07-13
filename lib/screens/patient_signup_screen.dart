import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/utils/theme.dart';

class PatientSignup extends StatefulWidget {
  @override
  _PatientSignupState createState() => _PatientSignupState();
}

class _PatientSignupState extends State<PatientSignup> {
  TextEditingController nameController = TextEditingController();
  String casehistory_id;
  List<String> patientcasehistory = [
    "Cardiac",
    "Chronic Pain",
    "AIDS"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Case History',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),


                )),
            DropDownField(
              onValueChanged: (dynamic value) {
                casehistory_id = value;
              },
              value: casehistory_id,
              required: false,
              hintText: 'Case History',
              items: patientcasehistory,
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 20),
                )),

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Age',style:TextStyle(fontSize: 20),


                )),
            Container(
                height: 50,
                //padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green[600],
                  child: Text('Login'),
                  onPressed: () {
                    print("clicked on login button");
                  },
                )),
           /* DropDownField(
              onValueChanged: (dynamic value) {
                age_id = value;
              },
              value: age_id,
              required: false,
              hintText: 'Age',
              items: age,
            ),*/


          ],
        ),
      ),
    );
  }
}
