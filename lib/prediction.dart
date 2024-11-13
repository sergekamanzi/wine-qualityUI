import 'package:flutter/material.dart';

class PredictionPage extends StatefulWidget {
  final double leftMargin; // Adjustable left margin

  PredictionPage({this.leftMargin = 66.0}); // Default value for left margin

  @override
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: widget.leftMargin, right: 16.0), // General padding with left margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                SizedBox(height: 40), // Space from the top of the screen
                Padding(
                  padding: EdgeInsets.only(left: widget.leftMargin),
                  child: Text(
                    'PREDICTED RATINGS',
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: widget.leftMargin + 50),
                  child: Image.asset(
                    'assets/red.png', // Assuming the wine glass image is in the assets folder
                    width: 50,  // Set size as per your need
                    height: 50,
                  ),
                ),
                SizedBox(height: 20), // Space between image and result box

                // Test result box
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(right: widget.leftMargin),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: const Color.fromARGB(255, 178, 176, 176), width: 2.0),
                  ),
                  child: Text(
                    'Tested result:', // Text for the result
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ), // End of the result box
              ],
            ),
            // Test Again Button at the bottom center
            Padding(
              padding: EdgeInsets.only(right: widget.leftMargin, bottom: 300.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality to retest or navigate to the input page
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900, // Red color for button
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  'Test Again',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
