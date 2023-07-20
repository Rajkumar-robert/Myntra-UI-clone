import 'package:flutter/material.dart';

class Item {
  final String imageUrl;
   final String brand;
  final String description;
 

  Item({required this.imageUrl, required this.brand,required this.description});
}

class featuredCard extends StatelessWidget {
  final List<Item> items = [
    Item(
      imageUrl:
          'https://i.pinimg.com/564x/96/79/b7/9679b7dc5aff35f9138c2c5bb2554def.jpg',
      brand: "X-jackets",
      description: 'Affordable & Stylish Clothing',
    ),
    Item(
      imageUrl:
          'https://i.pinimg.com/564x/c5/2d/ba/c52dbad3d14381e8a068f9235f214ea9.jpg',
      brand: "Lemshirt",     
      description: 'Exclusive Collection',
    ),
    Item(
      imageUrl:
          'https://i.pinimg.com/564x/92/d4/10/92d410b2e6ae969d53fdb97d624c2cb5.jpg',
       brand: "flowersy",     
      description: 'Comfy and Stylish',
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1612690669207-fed642192c40?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1015&q=80',
      brand: "dji-22y",     
      description: 'Up to 70% Off!',
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1064&q=80',
       brand: "Apple",     
      description: 'Upgrade Your Tech',
    ),
  ];

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
              "FEATURED BRANDS",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: items.map((item) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5),
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 150,
                        height: 30,
                         decoration: BoxDecoration(
                          color: Colors.white,
                           border: Border.all(color: Colors.black,width: 0.5),
                        ),
                        alignment:Alignment.center ,
                        child: Text(item.brand,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                               
                              ),),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 250,
                          height: 75,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(220, 0, 0, 0),
                                Colors.transparent
                              ],
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              item.description,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                          ),
                        ),
                      ),
                    ],
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
