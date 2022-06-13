import 'package:flutter/material.dart';
import 'package:cloned_pak_grocer_app/constants.dart';

class Perks extends StatelessWidget {
  const Perks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.nearlygrey,
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 78, 5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.more_vert,
                          color: constants.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Container(
                      child: Text(
                        'Perks',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: constants.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.lock_rounded,
                      color: constants.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.81,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
