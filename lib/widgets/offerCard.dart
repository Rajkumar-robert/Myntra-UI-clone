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

class offerSlider extends StatefulWidget {
  @override
  _offerSliderState createState() => _offerSliderState();
}

class _offerSliderState extends State<offerSlider> {
  int activeIndex = 0;
  final List<Item> items = [
    Item(
      imageUrl:
          'https://cdn2.arabiccoupon.com/sites/default/files/styles/article/public/field/image/vogacloset-eid-al-adha-sale-and-coupon-en-arabiccoupon-articles-m06-c.jpg',
      tag: "Eid Al-Adha Sale",
      desc: "Get up to 50% off on Vogacloset!",
    ),
    Item(
      imageUrl:
          'https://cdn1.arabiccoupon.com/sites/default/files/styles/article/public/field/image/colorful-abayas-from-vogacloset-en-arabiccoupon-articles-m04-c.jpg',
      tag: "Colorful Abayas Sale",
      desc: "Shop trendy abayas at discounted prices!",
    ),
    Item(
      imageUrl:
          'https://images.template.net/108414/fashion-sale-banner-template-85svg.jpg',
      tag: "Fashion Sale",
      desc: "Limited time offer on fashion items!",
    ),
    Item(
      imageUrl:
          'https://img.freepik.com/free-psd/fashion-store-banner-template_23-2148675200.jpg?w=1060&t=st=1689767589~exp=1689768189~hmac=7b7f3df06630471eb6624aeb7ee55c887300fb18cbb2280e217a80fadc3d764a',
      tag: "Fashion Store",
      desc: "Find your style at unbeatable prices!",
    ),
    Item(
      imageUrl:
          'https://www.thetrendspotter.net/wp-content/uploads/2023/01/Business-Casual-Men.jpg',
      tag: "Business Casual",
      desc: "Upgrade your work wardrobe!",
    ),
    Item(
      imageUrl:
          'https://img.freepik.com/free-psd/clothing-store-concept-banner-template_23-2148722603.jpg?w=1060&t=st=1689767987~exp=1689768587~hmac=37aa6ba1c4a187feb1d5cea261e2fea36369485852b416df46aeb14de87d48f9',
      tag: "Clothing Store",
      desc: "Discover the latest trends in fashion!",
    ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
         
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ElevatedButton.icon(
          onPressed: () {   
          },
          icon: Icon(Icons.verified), 
          label: Text('Product'), 
        ),
           ElevatedButton.icon(
          onPressed: () {   
          },
          icon: Icon(Icons.currency_rupee), 
          label: Text('Offers'), 
        ),
           ElevatedButton.icon(
          onPressed: () {   
          },
          icon: Icon(Icons.delivery_dining), 
          label: Text('Delivery'), 
        ),
             ],
          )
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
