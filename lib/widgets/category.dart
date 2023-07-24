import 'package:flutter/material.dart';

class card {
  final String name;
  final String imageUrl;

  card({required this.name, required this.imageUrl});
}

class categoryCard extends StatelessWidget {
  final List<card> cards = [
    card(
      name: 'Men',
      imageUrl: 'https://media.istockphoto.com/id/1215542092/photo/portrait-of-smiling-young-man-in-a-white-t-shirt-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=GbNVyifVuH3XH9nP2Ek2ynRyW-is_BnCcA9MLAOtgh8=',
    ),
    card(
      name: 'Women',
      imageUrl: 'https://image.made-in-china.com/43f34j00PBaGCseEvYcU/2020-Women-Dresses-Summer-Clothes-Women-Solid-Color-Bodycon-Dress.webp',
    ),
    card(
      name: 'Kids',
      imageUrl: 'https://img.freepik.com/premium-photo/photo-two-children-white-tshirts-are-standing-beige-background_561613-20063.jpg?w=996',
    ),
    card(
      name: 'Footwear',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX6lv2Pk-WSBQMIeKQ9bbfbX0CDOCWdcRk7zT6xgGH9EcXq_D8DixN6FHP5FVm_ef5ky0&usqp=CAU',
    ),
    card(
      name: 'Beauty',
      imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/rare-beauty-makeup-1610141018.jpg?resize=980:*',
    ),
    card(
      name: 'Accessories',
      imageUrl: 'https://e7.pngegg.com/pngimages/421/417/png-clipart-hewlett-packard-enterprise-laptop-computer-case-motherboard-computer-accessories-computer-network-electronics-thumbnail.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: cards.map((user) {
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(user.imageUrl),
                  ),
                  SizedBox(height: 8),
                  Text(user.name),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}