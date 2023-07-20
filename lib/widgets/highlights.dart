import 'package:flutter/material.dart';
import 'dart:math';

class Item {
  final String imageUrl;
  final String description;
  final String brand;

  Item({required this.imageUrl, required this.description, required this.brand});
}

class highlightCard extends StatelessWidget {
  final List<Item> items = [
    Item(
      imageUrl:
          'https://cdn.luxe.digital/media/2019/09/12084906/casual-dress-code-men-street-style-luxe-digital-1.jpg.webp',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2022/09/Short-Puff-Sleeves-Satin-Wedding-Dresses-1.jpg',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://cdn.luxe.digital/media/2019/09/12084923/casual-dress-code-men-style-chris-pine-luxe-digital.jpg.webp',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://tiimg.tistatic.com/fp/1/006/458/casual-mens-formal-dress-872.jpg',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2019/08/Women-A-Line-Long-Elegant-Dresses3.jpg',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2019/04/White-Cover-Up-Women-Lace-Sheer-Open-Front-Beach-Dress-1.jpg',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
    Item(
      imageUrl:
          'https://i.pinimg.com/564x/08/da/63/08da63ade4b3e9f1017e74cadb07dd06.jpg',
      description: generateRandomOfferPercentage(),
      brand: generateRandomBrandName(),
    ),
  ];

  static String generateRandomBrandName() {
    List<String> brandNames = [
      'Glamorista',
      'Chic Couture',
      'Trendy Threads',
      'Elegance Boutique',
      'Fashion Fusion',
      'Style Haven',
      'Posh Prêt-à-',
      'Mod Magifique',
      'Couture Chic',
      'Ethereal',
      'Diva Designs',
      'Glamour Galore',
      'Enchanté ',
      'Haute Hues',
      'Radiance',
      'Urban Vogue',
      'Femme Fatale',
      'Sartorial',
      'Goddess Garb',
      'Cinderella',
    ];

    Random random = Random();
    int index = random.nextInt(brandNames.length);
    return brandNames[index];
  }

  static String generateRandomOfferPercentage() {
    Random random = Random();
    int percentage = random.nextInt(50) + 1;
    return '$percentage% Off';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text(
              ("Highlights of the day").toUpperCase(),
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: items.map((item) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal:10),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.transparent],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 200,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(220, 0, 0, 0),
                            Colors.transparent
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              item.brand,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w900,
                              ),
                            ), 
                          ),
                           Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              item.description,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ), 
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder Example'),
      ),
      body: highlightCard(),
    ),
  ));
}
