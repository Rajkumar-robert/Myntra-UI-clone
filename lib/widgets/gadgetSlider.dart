import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Item {
  final String imageUrl;
  final String tag;
  final String desc;

  Item({
    required this.imageUrl,
    required this.tag,
    required this.desc,
  });
}

class gadgetSlider extends StatefulWidget {
  @override
  _gadgetSliderState createState() => _gadgetSliderState();
}

class _gadgetSliderState extends State<gadgetSlider> {
  int activeIndex = 0;
  final List<Item> items = [
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1609081219090-a6d81d3085bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1026&q=80',
      tag: "Audio Bliss",
      desc: "Headphones and Speakers on Sale!",
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
      tag: "Incredible Deals",
      desc: "on Electronics!",
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1614272660397-487cf606be4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1025&q=80',
      tag: "Capture the Moment",
      desc: "Cameras and Accessories Sale!",
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1625102217544-a096a17018f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80',
      tag: "Stay Connected",
      desc: "Best Deals on Smartphones and Tablets!",
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80',
      tag: "Tech Bonanza",
      desc: "Unbeatable Discounts on Gadgets!",
    ),
    Item(
      imageUrl:
          'https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1168&q=80',
      tag: "Gaming Extravaganza",
      desc: "Gaming Gadgets at Low Prices!",
    ),
  ];

 
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              ("gadgets for you!").toUpperCase(),
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          
          Material(
            elevation: 5,
            child: CarouselSlider.builder(
              itemCount: items.length,
              itemBuilder: (context, index, realIndex) {
                final Item item = items[index];
    
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                       padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.tag,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            item.desc,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: false,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          buildIndicator(),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: items.length,
        effect: JumpingDotEffect(
          dotWidth: 8,
          dotHeight: 8,
        ),
      );
}


