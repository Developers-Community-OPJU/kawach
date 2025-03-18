import 'package:flutter/material.dart';

class TermsAndPoliciesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Terms and Policies', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Terms & Conditions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "Your privacy is important to us. It is iobot Technologies India Private Limited’s policy to respect your privacy regarding any information we may collect from you.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text('Information we collect', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Log data', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                "When you visit our app, our servers may automatically log the standard data provided by your web browser...",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text('Personal information', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                "We may ask for personal information, such as your name and email address...",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}