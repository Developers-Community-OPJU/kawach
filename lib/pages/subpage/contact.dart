import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/register_bg.png', // Replace with your background image
              fit: BoxFit.cover,
            ),
          ),
          // Form Content
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Text(
                  "Get in Touch",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Need assistance with our app? We're here to help! Reach out to us for support, enquiries, or feedback.",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 20),

                // Form Fields
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildTextField("Name"),
                      const SizedBox(height: 12),
                      buildTextField("Email"),
                      const SizedBox(height: 12),
                      buildTextField("Mobile No."),
                      const SizedBox(height: 12),
                      buildTextField("Feedback", maxLines: 3),
                      const SizedBox(height: 16),

                      // Send Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Handle form submission
                            }
                          },
                          child: const Text(
                            "Send",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Contact Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    contactInfo(Icons.phone, "9835594986"),
                    const SizedBox(width: 20),
                    contactInfo(Icons.email, "bhattgyaneesh@gmail.com"),
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to create text fields
  Widget buildTextField(String hint, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter $hint";
        }
        return null;
      },
    );
  }

  // Function to create contact info icons
  Widget contactInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
