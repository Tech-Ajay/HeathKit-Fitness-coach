import 'dart:math';

import 'package:flutter/material.dart';
import 'package:upi_pay/upi_pay.dart';

void main() => runApp(Appp());

class Appp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Diet Pricing'),
        ),
        body: Screen(),
      ),
    );
  }
}


class Screen extends StatefulWidget {
  @override
  Screen({Key key, this.title}) : super(key: key);
  final String title;
  _ScreenState createState() => _ScreenState();

}

class _ScreenState extends State<Screen> {

  String _upiAddrError;

   String _upiAddressController='harshar40-1@okhdfcbank' ;
   String _amountController='599';

  bool _isUpiEditable = false;
  Future<List<ApplicationMeta>> _appsFuture;

  @override
  void initState() {
    super.initState();

    _amountController =
        (599).toStringAsFixed(2);
    _appsFuture = UpiPay.getInstalledUpiApplications();
  }

  @override
  void dispose() {
    _amountController='';
    _upiAddressController='';
    super.dispose();
  }

  void _generateAmount() {
    setState(() {
      _amountController =
          (Random.secure().nextDouble() * 10).toStringAsFixed(2);
    });
  }

  Future<void> _onTap(ApplicationMeta app) async {
    final err = _validateUpiAddress(_upiAddressController);
    if (err != null) {
      setState(() {
        _upiAddrError = err;
      });
      return;
    }
    setState(() {
      _upiAddrError = null;
    });

    final transactionRef = Random.secure().nextInt(1 << 32).toString();
    print("Starting transaction with id $transactionRef");

    final a = await UpiPay.initiateTransaction(
      amount: _amountController,
      app: app.upiApplication,
      receiverName: 'Harsha Reddy',
      receiverUpiAddress: _upiAddressController,
      transactionRef: transactionRef,
      merchantCode: '',
    );

    print(a);
  }
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _amountController='599';
          break;
        case 1:
          _amountController='999';

          break;

      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,


      shrinkWrap: true,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 32),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                ),
                new Divider(height: 5.0, color: Colors.black),
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                ),
                Center(
                  child: new Text(
                    'Diet',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '2 Months',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '4 Months',
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_upiAddrError != null)
            Container(
              margin: EdgeInsets.only(top: 4, left: 12),
              child: Text(
                _upiAddrError,
                style: TextStyle(color: Colors.red),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
                shrinkWrap: true,

                scrollDirection: Axis.vertical,

                children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 128, bottom: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Pay Using',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  FutureBuilder<List<ApplicationMeta>>(
                    future: _appsFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return Container();
                      }

                      return GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1.6,
                        physics: NeverScrollableScrollPhysics(),
                        children: snapshot.data
                            .map((it) => Material(
                          key: ObjectKey(it.upiApplication),
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: () => _onTap(it),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.memory(
                                  it.icon,
                                  width: 64,
                                  height: 64,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: Text(
                                    it.upiApplication.getAppName(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            )
        ],
      ),
          ),
    ],
    );
  }
}

String _validateUpiAddress(String value) {
  if (value.isEmpty) {
    return 'UPI Address is required.';
  }

  if (!UpiPay.checkIfUpiAddressIsValid(value)) {
    return 'UPI Address is invalid.';
  }

  return null;
}