import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/categories_model.dart';
import '../model/offers_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                  Text(
                    'San Francisco',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.black,
                    size: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.red,
                      size: 33,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 290,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                        // controller: _searchController,
                        decoration: InputDecoration(
                      icon: Icon(
                        Icons.search_rounded,
                        size: 35,
                      ),
                      hintText: 'Search offers...',
                      // Add a clear button to the search bar
                    )),
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.red,
                    size: 35,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'Top categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            Container(
              width:double.infinity,
              height: 70,
              color: Colors.brown[50],
              child:  ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) => Padding(
                    padding:
                    const EdgeInsets.only( right: 12, bottom: 8, top: 8),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 90,
                        width: 70,
                        decoration: BoxDecoration(
                            color: categoryData[index].active
                                ? Colors.yellow
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(categoryData[index].icon,color: Colors.red,),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                categoryData[index].name,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ]),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width:double.infinity,
                height: 390,
                color: Colors.brown[50],
                child:  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: offerData .length,
                    itemBuilder: (context, index) => Padding(
                      padding:
                      const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 130,
                          width: 300,
                          decoration: BoxDecoration(
                              color: offerData [index].active
                                  ? Colors.yellow
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child:Image.network('https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg',fit: BoxFit.cover,)
                          // Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Icon(offerData [index].icon,color: Colors.red,),
                          //       const SizedBox(
                          //         height: 3,
                          //       ),
                          //       Text(
                          //         offerData [index].name,
                          //         style: const TextStyle(fontSize: 16),
                          //       ),
                          //     ]),
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
