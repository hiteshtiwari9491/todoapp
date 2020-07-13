import 'package:flutter/material.dart';
class DoctorSignup extends StatefulWidget {
  @override
  _DoctorSignupState createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  TextEditingController nameController = TextEditingController();
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
                  'Full Name',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                )),

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Qualifications',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Qualifications',
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Specialization',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Specialization',
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Location',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                )),
            /*Container(
              body :Ce
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Location',
                ),
              ),
            ),
*/
          ],

        ),
      ),
    );
  }
}
