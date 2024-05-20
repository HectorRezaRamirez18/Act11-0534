import 'package:flutter/material.dart';
import 'package:reza0534/util/category_card.dart';

import '../util/doctor_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8bb9e),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "PizzeriaRezza0534",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),

                // proile pict
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xffc65900),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // card-> how do you feel?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffff961d),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(children: [
                // animation or cute picture
                Container(
                  height: 100,
                  width: 100,
                  color: Color(0xffff961d),
                  child: Image.asset("lib/images/locall.jpg"),
                ),
                SizedBox(
                  width: 25,
                ),

                //how do you feel + get started button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Que desea Comprar?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Contamos con muchas pizzas!!",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color(0xffff0000),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Empezar Compra",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //  Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0x6fff9100),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Buscar Pizza...",
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          // horizontal listview -> categires: dentist, surgeon
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  categoryName: "Peperoni",
                  iconImagePath: "lib/icons/pp.jpg",
                ),
                CategoryCard(
                  categoryName: "Hawaiana",
                  iconImagePath: "lib/icons/hawai.jpg",
                ),
                CategoryCard(
                  categoryName: "Carne",
                  iconImagePath: "lib/icons/carne.jpg",
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pizzas recomendadas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Ver Mas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff242323),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          Expanded(
            child: ListView(scrollDirection: Axis.horizontal, children: [
              DoctorCard(
                doctorImagePath: "lib/images/pp.jpg",
                raiting: "9,9",
                doctorName: "Peperoni",
                doctorProfession: "Pizza",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/hawai.jpg",
                raiting: "8,5",
                doctorName: "Hawaiana",
                doctorProfession: "Pizza",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/carne.jpg",
                raiting: "10",
                doctorName: "Carne",
                doctorProfession: "Barbero",
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
