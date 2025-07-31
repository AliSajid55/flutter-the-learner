import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      height: 200,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 1),
            color: kbgcolor,
            blurStyle: BlurStyle.inner

          ),
          BoxShadow(
            offset: Offset(-1,-1),
            color: kfgcolor,
            blurStyle: BlurStyle.inner
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff00235B),
            Color.fromARGB(255, 100, 144, 216),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hii Dear\t',
                  style: TextStyle(
                    color: Colors.pink.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xffFFDD83),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.waving_hand,
                  color: Colors.amber,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Welcome Back',
              style: TextStyle(
                color: Color(0xffFFDD83),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SizedBox(width: MediaQuery.of(context).size.width*.7,
              
                child: const Text(
                  '"Learning is a journey that never ends. Embrace it with passion, curiosity, and an open mind. Start your learning adventure now!"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffFFDD83),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
