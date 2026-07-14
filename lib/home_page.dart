import 'package:flutter/material.dart';
import 'category_card.dart';
import 'product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),

        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
            "Coffee Shop",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        centerTitle: true,

        actions: [

          Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.view_in_ar,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 5),

          const Icon(Icons.shopping_bag_outlined,
              color: Colors.black),

          const SizedBox(width: 15),

          const Icon(Icons.search,
              color: Colors.black),

          const SizedBox(width: 10),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},

        child: const Icon(Icons.coffee),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            /// Categories
            Wrap(
              spacing: 10,
              children: const [

                CategoryCard(
                  title: "Coffee",
                  icon: Icons.coffee,
                  selected: true,
                ),

                CategoryCard(
                  title: "Iced",
                  icon: Icons.local_drink,
                ),

                CategoryCard(
                  title: "Matcha",
                  icon: Icons.emoji_food_beverage,
                ),

                CategoryCard(
                  title: "Snacks",
                  icon: Icons.breakfast_dining,
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Banner
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                        Icon(   
                          Icons.sunny,
                          color: Colors.yellow,
                          size: 30,
                        ),

                        Text(
                          "Hot Today 1 Try Iced Matcha!",
                          style: TextStyle(
                        
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                ],
              ),
            ),

            const SizedBox(height: 25),
            const Text(
              "Coffee",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),
Wrap(
    
              spacing: 10,
              children: const [

                ProductCard(
                  name: "Espresso",
                  price: "AED 15",
                  image:
                      "https://picsum.photos/200",
                ),

                ProductCard(
                  name: "Americano",
                  price: "AED 17",
                  image:
                      "https://picsum.photos/201",
                ),
  const Text(
              "Limited-Time Pairing",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
                ProductCard(
                  name: "Latte",
                  price: "AED 20",
                  image:
                      "https://picsum.photos/202",
                ),
               ProductCard(
                  name: "Croissant",
                  price: "AED 12",
                  image:
                      "https://picsum.photos/203",
                ),

              
              ],
            ),


          ],
        ),
      ),
    );
  }
}