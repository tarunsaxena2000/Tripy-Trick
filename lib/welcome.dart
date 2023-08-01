
import 'package:flutter/material.dart';

import 'package:flutter_application_1/signinscreen.dart';




class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();

}
class _WelcomeState extends State<Welcome>{
  @override
  Widget build(BuildContext context) {
    const decorationImage = DecorationImage(
          image: AssetImage('assets/images/1.png'),fit: BoxFit.cover);
    return Container(
      decoration: const BoxDecoration(
        image: decorationImage
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(90),
              width: 200,
              height: 800,
              child: Align(
                alignment: Alignment.bottomCenter,
                child:  ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),),
              );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 99, 133, 243),
                    onPrimary: Color.fromARGB(255, 197, 197, 197),
                    elevation: 20,
                    shadowColor: Color.fromARGB(255, 58, 107, 241),
                  ),
                   child: const Text('Explore Now',style: TextStyle(fontSize: 25),),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}