import 'package:flutter/material.dart';

class PaidBills extends StatefulWidget {
  const PaidBills({Key? key}) : super(key: key);

  @override
  State<PaidBills> createState() => _PaidBillsState();
}

class _PaidBillsState extends State<PaidBills> {
  @override
  Widget build(BuildContext context) {
    var headers = [
      'Invoice Date',
      'Invoice Number',
      'Total Items',
      'Total Amount',
      'Status',
      ''
    ];
    var lists = [
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': 'IN19530',
        'items': '5',
        'amount': '14,000.00',
        'status': 'paid'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': 'RE857309',
        'items': '3',
        'amount': '3,000.00',
        'status': 'paid'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': '19530',
        'items': '1',
        'amount': '1,500.00',
        'status': 'paid'
      },
      // {
      //   'date': '02/11/2020',
      //   'time': '10:30:20am',
      //   'number': '19530',
      //   'items': '1',
      //   'amount': '1,500.00',
      //   'status': 'paid'
      // },
    ];

    return Scaffold(
        backgroundColor: const Color.fromRGBO(247, 249, 250, 1),
        appBar: AppBar(
          title: const Text('Retrieve Bills',
              style: (TextStyle(color: Colors.black))),
          backgroundColor: const Color.fromRGBO(249, 249, 249, 0.94),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(44.5, 0, 44.5, 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Patient\'s Name: ',
                        style: TextStyle(
                            color: Color.fromRGBO(52, 52, 52, 1),
                            fontSize: 24.0),
                      ),
                      SizedBox(height: 21.0,),
                      Text(
                        'Tel: ',
                        style: TextStyle(
                            color: Color.fromRGBO(52, 52, 52, 1),
                            fontSize: 24.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Patient\'s ID: ',
                        style: TextStyle(
                            color: Color.fromRGBO(52, 52, 52, 1),
                            fontSize: 24.0),
                      ),
                      SizedBox(height: 21.0,),
                      Text(
                        'Gender: ',
                        style: TextStyle(
                            color: Color.fromRGBO(52, 52, 52, 1),
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 110.0,
              ),
              Container(
                width: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Paid Invoices',
                          style: (TextStyle(
                            color: Color.fromRGBO(1, 70, 125, 1),
                            fontSize: 24,
                          )),
                        ),
                        SizedBox(
                          width: 46,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 41.0,
                    ),
                    Table(
                      border: TableBorder.all(),
                      // columnWidths: const <int, TableColumnWidth>{
                      //   0: IntrinsicColumnWidth(),
                      //   1: FlexColumnWidth(),
                      //   2: FixedColumnWidth(0),
                      // },
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: headers
                              .map((header) => Text(
                            header,
                            style: const TextStyle(
                                color: Color.fromRGBO(80, 80, 80, 1),
                                fontSize: 20),
                          ))
                              .toList(),
                        ),
                        for (var list in lists)
                          TableRow(children: [
                            Column(
                              children: [
                                Text(
                                  list['date'] as String,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(62, 65, 76, 1),
                                      fontSize: 18),
                                ),
                                Text(list['time'] as String,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(131, 135, 153, 1),
                                        fontSize: 14)),
                              ],
                            ),
                            Text(list['number'] as String,
                                style: const TextStyle(
                                    color: Color.fromRGBO(62, 65, 76, 1),
                                    fontSize: 18)),
                            Text(list['items'] as String,
                                style: const TextStyle(
                                    color: Color.fromRGBO(62, 65, 76, 1),
                                    fontSize: 18)),
                            Text(list['amount'] as String,
                                style: const TextStyle(
                                    color: Color.fromRGBO(62, 65, 76, 1),
                                    fontSize: 18)),
                            Text(list['status'] as String,
                                style: const TextStyle(
                                    color: Color.fromRGBO(237, 161, 47, 1),
                                    fontSize: 18)),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromRGBO(27, 136, 223, 1))),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/');
                                },
                                child: const Text('View'))
                          ])
                        // TableRow(
                        //
                        // )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
