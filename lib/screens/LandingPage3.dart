import 'package:flutter/material.dart';

class LandingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            // SECTION 1 + 2 with Padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // Top Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Flexible(
                        child: Center(
                          child: Image.asset(
                            'assets/images/progress.png',
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Skip logic
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF1E293B),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Headings and paragraph
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Emphatic AI Wellness',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Chatbot For All.',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Experience compassionate and personalized care with our AI chatbot.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // SECTION 3: Full-width Image with No Padding
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 600,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/landing3.png', // Changed to landing3.png
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/landingpage4');
                    },
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF1E293B),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
