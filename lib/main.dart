// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/patient_number.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/outstanding_bills.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/invoice_details.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/all_bills.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/invoice_details2.dart';
import 'package:fast_care_kiosk/pages/retrieve_bills/paid_bills.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/patient-number',
    routes: {
      '/patient-number': (context) => const PatientNumber(),
      '/outstanding-bill': (context) => const OutstandingBills(),
      '/invoice-detail': (context) => const InvoiceDetails(),
      '/all-bills': (context) => const AllBills(),
      '/invoice-detail2': (context) => const InvoiceDetails2(),
      '/paid-bills': (context) => const PaidBills()
    },
  ));
}