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
        padding: const EdgeInsets.fromLTRB(157, 0, 157, 0),
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
              height: 109.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter invoice number'),
              ),
            ),
            const SizedBox(
              height: 67.0,
            ),
            TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.blue,),
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
