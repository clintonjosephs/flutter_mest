import 'package:flutter/material.dart';

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          elevation: 0,
        ),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      color: Colors.green[900],
      child: Column(
        children: [
          const Text(
            "Welcome to Saifty!",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Keep your data safe!",
            style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Show buttom sheet'),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _bottomSheetItems(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _bottomSheetItems(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height - 30,
    color: Colors.white,
    // decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
    padding: const EdgeInsets.only(top: 16.0, left: 25, right: 25),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Text(
            'GDPR Settings',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Please confirm that you accept receiving content in the following ways:',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: const [
                  Icon(
                    Icons.phone_android_outlined,
                    size: 60,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30),
                  Text("Push", style: TextStyle(fontSize: 18),),
                ],
              ),
              Column(children: const [
                Icon(
                  Icons.email_outlined,
                  size: 60,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                Text("Email", style: TextStyle(fontSize: 18),),
              ]),
              Column(children: const [
                Icon(
                  Icons.sms_outlined,
                  size: 60,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                Text("SMS", style: TextStyle(fontSize: 18),),
              ])
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(double.infinity, 40),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: const Text(
                "Save Settings",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(double.infinity,
                    40), // set width to the width of the screen and height to 50
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: const Text(
                "Learn more",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
