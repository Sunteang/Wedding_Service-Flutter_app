import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class ChoosePaymentPage extends StatefulWidget {
  @override
  _ChoosePaymentPageState createState() => _ChoosePaymentPageState();
}

class _ChoosePaymentPageState extends State<ChoosePaymentPage> {
  String? _selectedBank;

  @override
  Widget build(BuildContext context) {
    // Static Data
    final double hallFee = 1000.0;
    final double tax = 600.0;
    final double total = hallFee + tax;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Event Date Section
              Text(
                'Select Event Date',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'From',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'To',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Event Location Section
              Text(
                'Event Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Event Name',
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(height: 20),

              // Select Payment Section
              Text(
                'Select Payment',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  RadioListTile<String>(
                    title: Text('ABA Bank'),
                    value: 'ABA',
                    groupValue: _selectedBank,
                    onChanged: (value) {
                      setState(() {
                        _selectedBank = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('AC Bank'),
                    value: 'AC',
                    groupValue: _selectedBank,
                    onChanged: (value) {
                      setState(() {
                        _selectedBank = value;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Wing Bank'),
                    value: 'Wing',
                    groupValue: _selectedBank,
                    onChanged: (value) {
                      setState(() {
                        _selectedBank = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 20),

              // Price and Pay Now Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price: \$${hallFee.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, double value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            '\$${value.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
