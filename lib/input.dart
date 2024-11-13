import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/back.png',  // Path to your image
            width: 34,
            height: 34,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'RED WINE',
                style: TextStyle(
                  color: Colors.red.shade900,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Input fields
            _buildInputField('Fixed acidity'),
            _buildInputField('Volatile Acidity'),
            _buildInputField('Citric Acid'),
            _buildInputField('Residual Sugar'),
            _buildInputField('pH level'),
            _buildInputField('Alcohol Content'),
            SizedBox(height: 80),
            // Find Result Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for Find Result button
                  Navigator.pushNamed(context, '/prediction');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF591111), // Dark brown color for button
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  'Find Result',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build input fields
  Widget _buildInputField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade300,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
