import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';

class Start extends StatelessWidget{
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.webp'), fit: BoxFit.cover,)
      ),
      child: Container(
        color: Colors.black.withOpacity(0.6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/restaurant.png'),
            const SizedBox(height: 30,),
            const Text('APP RECIPE',
              style: TextStyle(
                fontSize: 75, 
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none
              ),
            ),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                textStyle: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ), 
              child: const Text("START!",)
            ),
            const SizedBox(height: 30,),
          ]
        ),
      ),
    );
  }
}