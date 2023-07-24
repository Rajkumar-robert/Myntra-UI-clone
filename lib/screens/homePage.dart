import 'package:flutter/material.dart';
import 'package:myntraclone/screens/screen2.dart';
import 'package:myntraclone/widgets/offerCard.dart';
import '../widgets/category.dart';
import '../widgets/featured.dart';
import '../widgets/gadgetSlider.dart';
import '../widgets/highlights.dart';
import '../widgets/productGrid.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(
              "https://cdn.iconscout.com/icon/free/png-512/free-myntra-2709168-2249158.png"),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
          
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () { },),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
            },
          ),
          IconButton(icon: Icon(Icons.shopping_bag_outlined), onPressed: () {}              ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black, 
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Container(
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              categoryCard(),
              offerSlider(),
              SizedBox(height: 8),
              highlightCard(),
              SizedBox(height: 8),  
              featuredCard(),
              SizedBox(height: 8), 
              gadgetSlider(),
              SizedBox(height: 8), 
              productGrid(),     
              
           Container(
                  color: Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
              },
              child: Text('View more products'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Next page'),
            ),
          ],
        ),
      ),
            ]
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}