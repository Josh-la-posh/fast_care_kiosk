// import 'dart:html';

import 'package:flutter/material.dart';

class PatientNumber extends StatefulWidget {
  const PatientNumber({Key? key}) : super(key: key);

  @override
  State<PatientNumber> createState() => _PatientNumberState();
}

class _PatientNumberState extends State<PatientNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: (TextStyle(color: Colors.black)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(249, 249, 249, 0.94),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(157, 288, 157, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Patient Number',
              style: TextStyle(fontSize: 36.0, fontFamily: '800'),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Enter the patient number to view all bill invoice under the patient’s name and make payments too ',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: '500',
                  color: Color.fromRGBO(99, 107, 117, 1)),
            ),
            const SizedBox(
              height: 89.0,
            ),
            const TextField(
              // style: TextStyle(),
              decoration: InputDecoration(
                  labelText: 'Invoice Number',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  hintText: 'Enter invoice number'
                ),
            ),
            const SizedBox(
              height: 57.0,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(768, 88),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/outstanding-bill');
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
