import 'package:aurora_software_project/admin/custom_button.dart';
import 'package:aurora_software_project/admin/custom_textfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddToolsScreen extends StatefulWidget {
  const AddToolsScreen({Key? key}) : super(key: key);

  @override
  State<AddToolsScreen> createState() => _AddToolsScreenState();
}

class _AddToolsScreenState extends State<AddToolsScreen> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
    final TextEditingController howToUseController = TextEditingController();
      final TextEditingController ingrediantsController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
   String category = 'Face';
  @override
  void dispose() {
    super.dispose();
    productNameController.dispose();
    infoController.dispose();
    howToUseController.dispose();
    ingrediantsController.dispose();
    priceController.dispose();
    quantityController.dispose();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
            centerTitle: true, // Center the title
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF9B93E1),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Add Product',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10.0),
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.folder_open,
                          size: 40,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Select Product Images',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: productNameController,
                  hintText: 'Product Name',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: infoController,
                  hintText: 'Product Info',
                  maxLines: 3,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: howToUseController,
                  hintText: 'How To Use',
                  maxLines: 3,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: ingrediantsController,
                  hintText: 'Ingrediants',
                  maxLines: 3,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: priceController,
                  hintText: 'Price',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: quantityController,
                  hintText: 'Quantity',
                ),
               
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Sell',
                  color: Color(0xFF9B93E1),
                  onTap: (){},
                ),
                 const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
