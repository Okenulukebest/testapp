import 'package:flutter/material.dart';
import 'package:layout2/screens/about.dart';
import 'package:layout2/screens/contact.dart';
import 'package:layout2/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
                child: Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Welcome To\n My App\n',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                    TextSpan(
                        text:
                            'The flaxible app buildign that is\n crossplatform compactible ',
                            style: TextStyle(
                              color: Colors.black
                            )
                            ),
                  ])),
            )),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const Aboutpage()),
            //     );
            //   },
            // ),
            // // Container(
            //   height: 120,
            // ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: CustomButton(
                  buttonText: 'About Us',
                  onTap: Aboutpage(),
                )),
              
              SizedBox(
                child: CustomButton(
              buttonText: 'Contact us',
              onTap: Contact(),
            )),
          ],
            ),

            const Icon(
              Icons.search,
              color: Colors.black,
              size: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
