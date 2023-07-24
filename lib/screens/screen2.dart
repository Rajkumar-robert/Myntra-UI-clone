import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        title: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(
            "https://cdn.iconscout.com/icon/free/png-512/free-myntra-2709168-2249158.png",
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black, // Set the icon color to black
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Image.network(
                'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/4/19/4c42b837-58a8-48c7-ac22-5ff958622d381618836715619-Kiara-Advani-2x-min.png',
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Become An INSIDER!',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
               padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Join the insider programme and earn Supercoins with every purchase and much more. Log in now!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 205, 205, 205),
                  fontSize: 18, // Increase the font size to 18
                ),
              ),
            ),
            Container(
               padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Become An INSIDER!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
              children: [
                CustomListViewTile(
                  imageUrl: 'https://assets.myntassets.com/assets/images/retaillabs/2021/6/10/af3827a0-d814-4adf-9c64-875056c24b571623268092599-Slice-8-3x--1---1-.png',
                  heading: '\$0',
                  subtitle: 'You have spent',
                ),
                CustomListViewTile(
                  imageUrl: 'https://assets.myntassets.com/assets/images/retaillabs/2021/6/10/af3827a0-d814-4adf-9c64-875056c24b571623268092599-Slice-8-3x--1---1-.png',
                  heading: '0/5',
                  subtitle: 'Your Orders',
                ),
              ],
            ),
            ),
             Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Benifits of INSIDER!',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24, // Increase the font size to 24
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           Container(
              height: 220,
              child: ListView(
              children: [
                CustomListViewTile(
            imageUrl: 'https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/3e765afa-de7c-44dd-9379-5c12e7a5c6971622109794253-Early-access-to-sale-3x--1-.png',
            heading: 'Early Access',
            subtitle: '',
          ),
          CustomListViewTile(
            imageUrl: 'https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/8cb20882-94ba-464f-9d76-0a4004a52fbe1622110065196-Slice-26-3x.png',
            heading: 'Rewards and Benefits',
            subtitle: '',
          ),
          CustomListViewTile(
            imageUrl: 'https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/7e042b1c-9d95-4b99-bf14-ef76129870e91622110123552-Slice-26-3x.png',
            heading: 'Customer Support',
            subtitle: '',
          ),
              ],
            ),
            ),
          slider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color.fromARGB(255, 35, 33, 49),
          height: 130,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 59, 131), 
                    elevation: 4.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ), 
               Container(
              alignment: Alignment.center,
              child: Text(
                'by enrolling you agree to',
                style: TextStyle(
                  color:  Color.fromARGB(255, 91, 91, 91),
                  fontSize:12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              SizedBox(height: 5,),
              
            Container(
              alignment: Alignment.center,
              child: Text(
                'Insider Terms & Conditions',
                style: TextStyle(
                  color:  Color.fromARGB(255, 255, 59, 131),
                  fontSize:16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}




class CustomListViewTile extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String subtitle;

  CustomListViewTile({
    required this.imageUrl,
    required this.heading,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(imageUrl),
        
      ),
      title: Text(
        heading,
       style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
      ),
      subtitle: Text(subtitle,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
      onTap: () {
      },
    );
  }
}



class Item {
  final String imageUrl;
  final String description;

  Item({required this.imageUrl, required this.description});
}

class slider extends StatelessWidget {
  final List<Item> items = [
    Item(
      imageUrl: 'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/74e9ae39-2302-42e7-ad8c-917e51b2206c1630656211389-Get-Myntra-Voucher-worth-Rs.500.jpg',
      description: 'Get Myntra Voucher worth Rs.500',
    ),
    Item(
      imageUrl: 'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/4ef867c9-1129-4e3c-98c8-b67711845e421630656211382-Get-Leivs-Voucher-worth-Rs.-500.jpg',
      description: 'Get Levis Voucher worth Rs.500',
    ),
    Item(
      imageUrl: 'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/935ad8e3-121b-41d1-abd1-1200ad4dda531630656211396-Get-SonyLiv-Premium-1-Month-Subscription.jpg',
      description: 'Get SonyLiv Premium 1 Month Subscription',
    ),
    Item(
      imageUrl: 'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/ad73203d-eadf-4539-afff-8d9de0f121d61630656211403-Get-Tokyo-Talkies-Voucher-worth-Rs.400.jpg',
      description: 'Get Tokyo Talkies Voucher worth Rs.400',
    ),
    Item(
      imageUrl: 'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/258492c4-99f1-4a49-a416-c6e26303d82c1630656211377-Get-FLAT-12--OFF-on-Flipkart-Flight--Bookings.jpg',
      description: 'Get FLAT 12% OFF on Flipkart Flight Bookings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: items.map((item) {
              return Container(
                padding: EdgeInsets.all(8.0),
                width: 300,
                child: Column(
                  children: [
                    Container(
                      child: Image.network(item.imageUrl,
                    fit: BoxFit.cover,)),  
                    Container(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Text(
                          item.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
        SizedBox(height: 10),
      ],
    );
  }
}
