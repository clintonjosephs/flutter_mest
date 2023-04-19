import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';

class AccessCheck extends StatefulWidget {
  const AccessCheck({super.key});

  @override
  State<AccessCheck> createState() => _AccessCheckState();
}

class _AccessCheckState extends State<AccessCheck> {
  double cornerRadius = 30.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF8C970),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            height: (MediaQuery.of(context).size.height / 2) + 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cornerRadius),
                  topRight: Radius.circular(cornerRadius),
                ),
                color: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: Image.asset(
                          'assets/images/dog.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Oops!",
                      style: Styles.headLineStyle1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "You won't be able to send invitations to friends and family without access you contact. Are you sure?",
                        style: Styles.headLineStyle3),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Processing"),
                    )
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
