import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black, actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 40,
            ),
          )
        ]),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/will.jpg'),
                  radius: 55,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Wilson AMEDOME',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Developpeur Fullstack & Mobile',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'japan'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      border: Border.all(
                          color: const Color.fromARGB(255, 252, 160, 2),
                          width: 7),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 252, 160, 2),
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '00228 98896180',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                          color: const Color.fromARGB(255, 252, 160, 2),
                          width: 7),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.amber[700],
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'willyamedome@gmail.com',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Aux âmes bien nées,\n la valeur n\'attend point le nombre des années!',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ]),
        ));
  }
}
