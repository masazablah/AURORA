import 'package:aurora_software_project/ProductDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:aurora_software_project/constants.dart';
import './faceMakeup.dart';

class makeupScreen extends StatefulWidget {
  @override
  _makeupScreenState createState() => _makeupScreenState();
}

class _makeupScreenState extends State<makeupScreen> {
  int selectedIndex = -1;

  List<Product> products = [
    Product(name: 'Product 1', image: 'assets/images/eyes1.jpg', price: 10.99),
    Product(name: 'Product 2', image: 'assets/images/lipliner.jpg', price: 19.99),
    Product(name: 'Product 3', image: 'assets/images/maskara.jpg', price: 14.99),
    Product(name: 'Product 4', image: 'assets/images/lips1.jpg', price: 10.99),
    Product(name: 'Product 5', image: 'assets/images/lipliner.jpg', price: 19.99),
    Product(name: 'Product 6', image: 'assets/images/maskara.jpg', price: 14.99),
    Product(name: 'Product 7', image: 'assets/images/eyes1.jpg', price: 10.99),
    Product(name: 'Product 8', image: 'assets/images/lipliner.jpg', price: 19.99),
    Product(name: 'Product 9', image: 'assets/images/maskara.jpg', price: 14.99),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Shop Clean Makeup',
              style: TextStyle(
                color: Color(0xFF9B93E1),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
  padding: const EdgeInsets.only(top: 20.0),
  child: Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            alignment: WrapAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: CategoryWidget(
                  name: 'Shop All',
                  index: 1,
                  selectedIndex: selectedIndex,
                  onPressed: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: CategoryWidget(
                          name: 'Face',
                          logo: 'assets/images/spray.png',
                          index: 2,
                          selectedIndex: selectedIndex,
                          onPressed: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                          // Add your onTap logic here
                        },
                        child: CategoryWidget(
                          name: 'Cheeks',
                          logo: 'assets/images/brush.png',
                          index: 3,
                          selectedIndex: selectedIndex,
                          onPressed: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                        },
                        child: CategoryWidget(
                          name: 'Eyes',
                          logo: 'assets/images/eye.png',
                          index: 4,
                          selectedIndex: selectedIndex,
                          onPressed: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                        },
                        child: CategoryWidget(
                          name: 'Lips',
                          logo: 'assets/images/lips.png',
                          index: 5,
                          selectedIndex: selectedIndex,
                          onPressed: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                   
                                  },
                        child: CategoryWidget(
                           name: 'Brow',
                           logo: 'assets/images/brows.png',
                          index: 6,
                           selectedIndex: selectedIndex,
                          onPressed: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                  
                SizedBox(height: 10.0),
        SortByDropdown(),
        SizedBox(height: 20.0),
        Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.55, // Adjust this value to make items taller
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
      
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context1) => ProductDetailsPage(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Image.asset(
              product.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFF9B93E1),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                      child: Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}









class SortByDropdown extends StatefulWidget {
  @override
  _SortByDropdownState createState() => _SortByDropdownState();
}

class _SortByDropdownState extends State<SortByDropdown> {
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(top: 30.0), // Add padding here
       child: GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
              print('Dropdown open: $isDropdownOpen');
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sort By',
                style: TextStyle(fontSize: 18.0, color: Color(0xFF9B93E1)),
              ),
              Icon(Icons.keyboard_arrow_down), // Use your arrow icon
            ],
          ),
        ),
       ),
        Visibility(
          visible: isDropdownOpen,
          child: Container(
            width: 200.0,
             // Set the width of the container
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: const Color(0xFF9B93E1) )),
              
            color: const Color.fromARGB(255, 247, 242, 242),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                SortByOption('Highest Price'),
                SortByOption('Lowest Price'),
                SortByOption('Name: A-Z'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class SortByOption extends StatelessWidget {
  final String text;

  SortByOption(this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      onTap: () {
        // Handle sorting logic here
      },
    );
  }
}

class CategoryWidget extends StatefulWidget {
  final String name;
  final String? logo;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onPressed;

  CategoryWidget({
    required this.name,
    this.logo,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed(widget.index); // Call the onPressed callback with the index
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 125.0, // Set the width to a larger value
            height: 50.0,
            decoration: BoxDecoration(
              color: widget.index == widget.selectedIndex ? Color(0xFF9B93E1) : Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Color(0xFF9B93E1),
                width: 2.0,
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      widget.name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: widget.index == widget.selectedIndex ? Colors.white : Color(0xFF9B93E1),
                      ),
                    ),
                  ),
                ),
                if (widget.logo != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(widget.logo!, width: 30.0, height: 30.0),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



