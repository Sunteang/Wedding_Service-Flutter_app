import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/choose-payment/ChoosePayment.dart';
import 'package:wedding_service_app/pages/messages/MessagesPage.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class RePaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Static Data
    final String serviceName = 'Royal Gardens Service Provider';
    final String location = 'K Mall, Veng Sreng Blvd, Phnom Penh';
    final double pendingAmount = 500.0;
    final double tax = 100.0;
    final double total = pendingAmount + tax;

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
          'Re-',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Outstanding Payment Details
              Text(
                'Pending Payment Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Service Name: $serviceName\n'
                  'Location: $location\n'
                  'Pending Amount: \$${pendingAmount.toStringAsFixed(2)}\n',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
              SizedBox(height: 20),

              // Apply Coupon Button
              ElevatedButton.icon(
                onPressed: () {
                  // Apply coupon action
                },
                icon: Icon(Icons.local_offer, color: Colors.pink),
                label: Text(
                  'Apply Coupon',
                  style: TextStyle(color: Colors.pink),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[50],
                  elevation: 0,
                  side: BorderSide(color: Colors.pink),
                ),
              ),
              SizedBox(height: 20),

              // Payment Breakdown Section
              const Text(
                'Payment Breakdown',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow('Pending Amount', pendingAmount),
                  _buildDetailRow('Tax', tax),
                  Divider(),
                  _buildDetailRow('Total Due', total, isBold: true),
                ],
              ),
              const SizedBox(height: 20),

              // Messages and Pending Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Messages Page
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesPage()));
                    },
                    icon: const Icon(Icons.message, color: Colors.white),
                    label: const Text(
                      'Messages',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Apply coupon action
                    },
                    icon: Icon(Icons.access_time, color: Colors.orange),
                    label: Text(
                      'Pending',
                      style: TextStyle(color: Colors.orange),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[50],
                      elevation: 0,
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Price and Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: \$${total.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add navigation or payment logic here
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePaymentPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'Payment',
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
