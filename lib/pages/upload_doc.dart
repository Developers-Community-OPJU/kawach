import 'package:flutter/material.dart';

class UploadDocumentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upload Your Document",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Model: Kavach",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            UploadField(label: "Aadhar No."),
            SizedBox(height: 10),
            UploadField(label: "Registration No."),
            SizedBox(height: 10),
            UploadField(label: "Driving License"),
          ],
        ),
      ),
    );
  }
}

class UploadField extends StatelessWidget {
  final String label;

  UploadField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: label,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Handle upload logic here
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text("Upload", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
