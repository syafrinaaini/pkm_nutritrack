import 'package:flutter/material.dart';
import 'package:pkm_nutritrack/view/autoslide.dart';
import 'package:pkm_nutritrack/view/loginScreen.dart';
class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Positioned.fill(
            child: Container(
              color: Color(0xFF670274), // Set the background color to purple
            ),
          ),
          // Positioned image
          Positioned(
            top: MediaQuery.of(context).size.height *
                0, // Adjust this value to move the image up or down
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/piramida.png', // Ganti ini dengan path gambar di assets Anda
                width: 700, // Sesuaikan ukuran gambar
                height: 400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0, // Make the white box full width
              heightFactor: 0.4, // Adjust the height of the white box
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20), // Add space at the top
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AutoSlideScreen()),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        decoration: BoxDecoration(
                          color:
                              Color(0xFF670274), // Purple color for the button
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add space between buttons
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signInScreen()),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white, // White color for the button
                          border: Border.all(
                            color: Color(0xFF670274), // Purple border color
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'I Already Have an Account',
                          style: TextStyle(
                            color: Color(0xFF670274),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
