import 'package:flutter/material.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({Key? key}) : super(key: key);

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  @override
  Widget build(BuildContext context) {
    var tableHeader = ['S/N', 'Item', 'Amount', 'Qty', 'Total'];
    var lists = [
      {
        'id': '1',
        'item': 'Chloroquine Phosphate',
        'amount': '4,000',
        'qty': '1',
        'total': '4,000'
      },
      {
        'id': '2',
        'item': 'Full Blood Count (FBC) (RBC, WBC, Platelet count',
        'amount': '4,000',
        'qty': '1',
        'total': '4,000'
      },
      {
        'id': '3',
        'item': 'HIV Screening',
        'amount': '1,500',
        'qty': '1',
        'total': '1,500'
      },
      {
        'id': '4',
        'item': 'Chloroquine Phosphate',
        'amount': '4,000',
        'qty': '1',
        'total': '4,000'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice Details',
          style: TextStyle(color: Colors.black, fontSize: 34),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(249, 249, 249, 0.94),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 66, horizontal: 22),
        child: Column(
          children: [
            const Center(
                child: Text(
              'RE857309',
              style: TextStyle(
                  color: Color.fromRGBO(220, 222, 230, 1), fontSize: 44),
            )),
            const SizedBox(
              height: 67.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Patient\'s Name: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 23.0,
                    ),
                    Text(
                      'Patient\'s ID: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 23.0,
                    ),
                    Text(
                      'Tel: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invoice Number: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 23.0,
                    ),
                    Text(
                      'Physician\'s Name: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 23.0,
                    ),
                    Text(
                      'Date: ',
                      style: TextStyle(
                          color: Color.fromRGBO(52, 52, 52, 1), fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 135.0,
            ),
            const Center(
                child: Text(
              'Payment Items',
              style: TextStyle(
                  color: Color.fromRGBO(52, 52, 52, 1), fontSize: 29.23),
            )),
            const SizedBox(
              height: 16.9,
            ),
            Container(
              width: 987,
              color: Colors.white,
              child: Column(
                children: [
                  Table(
                    children: [
                      TableRow(
                        children: tableHeader
                            .map((header) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    header,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ))
                            .toList(),
                      ),
                      for (var list in lists)
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              list['id'] as String,
                              style: const TextStyle(
                                color: Color.fromRGBO(84, 87, 102, 1),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              list['item'] as String,
                              style: const TextStyle(
                                  color: Color.fromRGBO(84, 87, 102, 1), fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              list['amount'] as String,
                              style: const TextStyle(
                                  color: Color.fromRGBO(84, 87, 102, 1), fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              list['qty'] as String,
                              style: const TextStyle(
                                  color: Color.fromRGBO(84, 87, 102, 1), fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              list['total'] as String,
                              style: const TextStyle(
                                  color: Color.fromRGBO(84, 87, 102, 1), fontSize: 20),
                            ),
                          ),
                        ]),
                    ],
                  ),
                  const SizedBox(height: 95,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(18, 15, 24, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal: ', style: TextStyle(fontSize: 28)),
                        Text('N16,000.00 ', style: TextStyle(fontSize: 28)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discount Amount:',
                      style: TextStyle(
                          color: Color.fromRGBO(84, 87, 102, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 22.0,
                    ),
                    Text(
                      'Discount Amount:',
                      style: TextStyle(
                          color: Color.fromRGBO(41, 43, 51, 1), fontSize: 28),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'N0:',
                      style: TextStyle(
                          color: Color.fromRGBO(254, 25, 25, 1), fontSize: 24),
                    ),
                    SizedBox(
                      height: 22.0,
                    ),
                    Text(
                      'N16,640.00:',
                      style: TextStyle(
                          color: Color.fromRGBO(41, 43, 51, 1), fontSize: 34),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 272,),
            Center(
              child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(539, 72),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(27, 136, 223, 1)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/all-bills');
                  },
                  child: const Text('Make Payment')),
            )
          ],
        ),
      ),
    );
  }
}
