import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Icon(
                  Icons.people,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Welcome to Flutter training",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Please login or signup to coninue using this app",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity,
                            40), // set width to the width of the screen and height to 50
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Register"),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity,
                            40), // set width to the width of the screen and height to 50
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                    ),
                  ),
                ],
              ),
              const Text(
                "By continuing you have agreed to the terms and conditions for our application",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
