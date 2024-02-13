// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stayz/constants/resources/asset_manegar.dart';
import 'package:stayz/constants/resources/mycolors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> Images = [
    ImageAssets.one,
    ImageAssets.tow,
    ImageAssets.three,
    ImageAssets.fore,
    ImageAssets.five,
  ];
  List<String> CategoriesName = [];

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage(ImageAssets.fore),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 45.0, left: 45, right: 45, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.dashboard_customize_sharp,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Hi Anaa',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'find your favorite',
                            style: TextStyle(
                                color: Color.fromARGB(255, 102, 102, 102),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Hotel',
                            style: TextStyle(
                                color: MyColors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.black54),
                              width: double.infinity,
                              child: Center(
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  cursorColor: Colors.white,
                                  cursorHeight: 25,
                                  controller: searchController,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    prefixIcon: Icon(
                                      Icons.search_rounded,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: ImageIcon(
                                      AssetImage(ImageAssets.ten),
                                      color: Colors.grey,
                                    ),
                                    labelStyle: TextStyle(color: Colors.white),
                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      width: 160,
                                      height: 60,
                                      child: Card(
                                        color: Colors.black,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            side: const BorderSide(
                                                color: MyColors.green,
                                                width: 2)),
                                        child: const Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text('Best offers 🔥',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: Images.length,
                                itemBuilder: (BuildContext context, int index) {
                                  String category = Images[index];
                                  // String categoriesName = CategoriesName[index];
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: const BorderSide(
                                                color: Colors.black, width: 0)),
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                category,
                                                fit: BoxFit.cover,
                                                width: 190,
                                                height: 230,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Hotel Jardine Atlantic>',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Calheta',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
