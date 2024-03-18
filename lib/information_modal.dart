import 'package:flutter/material.dart';

class InformationModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Align(
        alignment: Alignment.center,
        child: Text(
          '20229464',
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min, // Ensure minimal height for the content
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Name: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('John Doe'),
            ],
          ),
          SizedBox(height: 5), // Add space between rows
          Row(
            children: [
              Text(
                'Time: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('12:00 PM'),
            ],
          ),
          SizedBox(height: 5), // Add space between rows
          Row(
            children: [
              Text(
                'Status: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Recorded'),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the modal
          },
          child: const Text('Close',style: TextStyle(color: Color(0xFF2C2E93)),),
        ),
      ],
    );
  }
}
