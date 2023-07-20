import 'package:flutter/material.dart';

class Item {
  final String imageUrl;
  final String name;
  final String price;
  final String offer;

  Item({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.offer,
  });
}

class productGrid extends StatelessWidget {
  final List<Item> items = [
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2018/05/Stripe-Off-shoulder-Tie-Half-Sleeve-Mini-Dresses.jpg',
      name: 'Stripe Off-shoulder Tie Half Sleeve Mini Dresses',
      price: '\$49.99',
      offer: '50% Off',
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2019/08/Women-A-Line-Long-Elegant-Dresses3.jpg',
      name: 'Women A-Line Long Elegant Dresses',
      price: '\$59.99',
      offer: '30% Off',
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2022/09/Short-Puff-Sleeves-Satin-Wedding-Dresses-1.jpg',
      name: 'Short Puff Sleeves Satin Wedding Dresses',
      price: '\$119.99',
      offer: '20% Off',
    ),
    Item(
      imageUrl:
          'https://powerdaysale.com/wp-content/uploads/2019/04/White-Cover-Up-Women-Lace-Sheer-Open-Front-Beach-Dress-1.jpg',
      name: 'White Cover-Up Women Lace Sheer Open Front Beach Dress',
      price: '\$39.99',
      offer: '45% Off',
    ),
    Item(
      imageUrl:
          'https://i.pinimg.com/564x/08/da/63/08da63ade4b3e9f1017e74cadb07dd06.jpg',
      name: 'Casual Men\'s Formal Dress',
      price: '\$79.99',
      offer: '55% Off',
    ),
    Item(
      imageUrl:
          'https://cdn.luxe.digital/media/2019/09/12084906/casual-dress-code-men-street-style-luxe-digital-1.jpg.webp',
      name: 'Casual Dress Code Men Street Style',
      price: '\$69.99',
      offer: '40% Off',
    ),
    Item(
      imageUrl:
          'https://cdn.luxe.digital/media/2019/09/12084923/casual-dress-code-men-style-chris-pine-luxe-digital.jpg.webp',
      name: 'Casual Dress Code Men Style',
      price: '\$89.99',
      offer: '25% Off',
    ),
    Item(
      imageUrl:
          'https://tiimg.tistatic.com/fp/1/006/458/casual-mens-formal-dress-872.jpg',
      name: 'Casual Men\'s Formal Dress 872',
      price: '\$99.99',
      offer: '35% Off',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              height: 55,
              child: GenreSelector()),
          Container(
            height: 1100,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return buildGrid(items[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGrid(Item item) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 218, 218, 218)),
      ),
      child: Column(
        children: [
          Container(
            height: 190,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Text(
              item.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Text(
              item.price,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Text(
              item.offer,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 77, 77),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GenreSelector extends StatefulWidget {
  @override
  _GenreSelectorState createState() => _GenreSelectorState();
}

class _GenreSelectorState extends State<GenreSelector> {
  final List<String> genres = [
    'All',
    'Shirts',
    'Casual Shoes'
    'Jeans',
    'Kurtas',
    'Trousers',
    'Dresses',
    'Blouse',
  ];

  int selectedGenreIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) {
          final genre = genres[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedGenreIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: selectedGenreIndex == index
                      ? Color.fromARGB(255, 255, 81, 148)
                      : Color.fromARGB(255, 230, 230, 230),
                  width: 1,
                ),
              ),
              child: Text(
                genre,
                style: TextStyle(
                  color: selectedGenreIndex == index
                      ? Color.fromARGB(255, 255, 81, 148)
                      : const Color.fromARGB(255, 60, 60, 60),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
