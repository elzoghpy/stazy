import 'package:flutter/material.dart';
import 'package:stayz/constants/resources/asset_manegar.dart';
import 'package:stayz/constants/resources/mycolors.dart';
import 'package:stayz/constants/resources/strings.dart';

class StazyScreen extends StatelessWidget {
  const StazyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              ImageAssets.five,
              // ImageAssets.splash0Image,
            ),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(60),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: MyColors.green),
                        width: 95,
                        height: 95,
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "STAZY.",
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w900,
                                letterSpacing: .9),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "STAZY",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                            Text(
                              "book easy",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white24),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 240, top: 20),
                  child: ImageIcon(
                    AssetImage(ImageAssets.nine),
                    color: MyColors.green,
                    size: 40,
                  ),
                ),
                const Text(
                  "Book Your hotels",
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  "Fast and Easly",
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Row(
                  children: [
                    Text(
                      "With",
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "STAZY",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: MyColors.green),
                    ),
                  ],
                ),
                const Text(
                  "Find Your hotel Easly and travel anywhere you want with us",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white38),
                ),
                const Spacer(),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                    color: MyColors.green,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, mainView);
                    },
                    child: const Text(
                      'Sign up >',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Already have an account? Login',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
