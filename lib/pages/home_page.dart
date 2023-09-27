import 'package:flutter/material.dart';

import '../components/horizontal_tile.dart';
import '../components/search_box.dart';
import '../components/vertical_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R e s t e ',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person,
                size: 25,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Find Your Next Home',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchBox(),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Horizontal_tile(name: "House", icon: Icons.house),
                  Horizontal_tile(name: "Apartment", icon: Icons.apartment),
                  Horizontal_tile(name: "Plot", icon: Icons.landscape_rounded),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'All Properties',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              const VerticalTile(
                  imageAdd:
                      'https://www.home-designing.com/wp-content/uploads/2014/06/white-modern-studio-design.jpeg',
                  name: 'Modern Studio Apartment',
                  rating: '4.8',
                  location: "North Mortimertown, California",
                  price: "1500"),
             const  VerticalTile(
                  imageAdd: 'https://www.decorilla.com/online-decorating/wp-content/uploads/2021/03/Minimal-studio-apartment-decor-2.jpg',
                  name: "Mordern Studio Apartment",
                  rating: "4.4",
                  location: "North Mortimertown, California",
                  price: "1200"),
              const VerticalTile(
                  imageAdd: 'https://www.home-designing.com/wp-content/uploads/2019/12/modern-studio-apartment-for-one.jpg',
                  name: "Mordern Studio Apartment",
                  rating: "4.1",
                  location: "North Mortimertown, California",
                  price: "1100"),

            ],
          ),
        ),
      ),
    );
  }
}
