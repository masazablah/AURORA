import 'package:aurora_software_project/makeupScreen.dart';
import 'package:aurora_software_project/skincareScreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aurora_software_project/Product.dart';
import 'package:aurora_software_project/cart.dart';


class ProductSection {
  final String title;
  final String description;

  ProductSection({required this.title, required this.description});
}

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<Color> colors = [
    const Color.fromARGB(255, 226, 126, 159),
    const Color.fromARGB(255, 153, 114, 99)
  ];
  Color selectedColor = const Color.fromARGB(255, 226, 126, 159); // Default selected color
  Map<Color, String> colorNames = {
    const Color.fromARGB(255, 226, 126, 159): 'Pink',
    const Color.fromARGB(255, 153, 114, 99): 'Brown',
  };
  List<int> ratings = [4, 5, 3, 4, 2];

  List<String> reviews = [
  'This product is amazing! It exceeded my expectations.',
  'I love the color options. They are so vibrant!',
  'The quality of the product is top-notch. Highly recommend.',
  'The price is a bit high, but it\'s worth it for the quality.',
];


  List<ProductSection> productSections = [
    ProductSection(title: 'Product Info', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor, libero eu ultricies commodo, nisi sem tempor nisi, non ultricies eros turpis a metus.'),
    ProductSection(title: 'How to Use', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor, libero eu ultricies commodo, nisi sem tempor nisi, non ultricies eros turpis a metus.'),
    ProductSection(title: 'When to Use', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor, libero eu ultricies commodo, nisi sem tempor nisi, non ultricies eros turpis a metus.'),
  ];
bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Color(0xFF9B93E1) : null,
            ),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
               
            },
          ),
           IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Add logic to share the product
              // For example, you can use the Share class from the 'package:share/share.dart' package
            },
          ),
       
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10.0),
            child: CarouselSlider(
              items: [
                //  1st Image of Slider
                Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/eyes1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // 2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/eyes3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // 3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/eyes4.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 380.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.7,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              widget.product.name,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  '\$${widget.product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                // Example star ratings
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star_half, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // Color selection circles
           Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: colors.map((color) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 27,
                        height: 27,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(height: 5), // Space between circle and text
                      if (color == selectedColor && colorNames[color] != null)
                        Text(
                          colorNames[color]!,
                          style: TextStyle(fontSize: 15),
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 260, // Adjust the width as needed
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyCartScreen()),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF9B93E1),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF9B93E1)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          // Implement decrease quantity functionality
                        },
                      ),
                      SizedBox(width: 5),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 3, height: 50),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Implement increase quantity functionality
                        },
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            
          ),

          SizedBox(height: 30),
           ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: productSections.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, ),
                  child: ExpansionTile(
                    title: Text(
                      productSections[index].title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          productSections[index].description,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
           ),

          SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 20.0,
                  
                ),
              ),
            ),

            
            
           // Example ratings corresponding to each review

            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(reviews.length, (index) {
                  return Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 20, top:10),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(ratings[index], (i) {
                            return Icon(Icons.star, color: Colors.yellow, size: 20);
                          }),
                        ),
                        SizedBox(height: 5),
                        Text(
                          reviews[index],
                          style: TextStyle(
                            fontSize: 13.0,
                            color: const Color.fromARGB(255, 32, 32, 32),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),


    


             SizedBox(height: 50),
        ],
      ),
    ),
    );
  }
}
