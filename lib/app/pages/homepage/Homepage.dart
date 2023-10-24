import 'package:e_learning/components/THeaderHome.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.0, top: 40.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 40.0),
                      child: Text("Hello Nozell"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 5.0),
                      child: Text("Today 18 November 2023"),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90.0, top: 50.0),
                  child: Icon(Iconsax.message_notif4),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage(images.banner),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Category",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Design"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Art"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Mathematics"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Computer Science"),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.blue,
                width: 180,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Kepala saya sudah pusing lo chawnima "),
                    Text("lu sangat cocok a, cocok buat oe hantam"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
