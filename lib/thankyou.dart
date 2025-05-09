import 'package:ai_detects_diabetic_retinopathy/homepage.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Workload Levels - NASA_TLX',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //description
            const Text(
              "NASA Task Load Index",
              style: TextStyle(
                fontSize: 24.0, // Font size
                color: Colors.white, // Text color
                fontWeight: FontWeight.bold, // Font weight
                //fontStyle: FontStyle.italic, // Font style (italic or normal)
                //decoration: TextDecoration.underline, // Text decoration (underline, line-through, etc.)
                //decorationColor: Colors.red,
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Thank you for submitting data",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 20.0),

            const SizedBox(height: 20.0), // Add spacing before submit button
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
