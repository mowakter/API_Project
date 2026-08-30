import 'package:api_project/service/product_list.dart';
import 'package:api_project/view/custom_widget/custom_text.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List myProduct = [];

  getProduct() async {
    var a = await ProductService().getProductList();
    // myProduct.clear();
    // await Future.delayed(Duration(seconds: 3));
    // myProduct.addAll(MyData.data);
    setState(() {
      myProduct = a;
    });
  }

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: CustomText(text: "Product List", fSize: 20),
        centerTitle: true,
      ),
      body: myProduct.length == 0
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: myProduct.length,
              itemBuilder: (context, index) => Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${myProduct[index]["image"]}"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "${myProduct[index]["title"]}",
                              fSize: 15,
                              fWeight: FontWeight.w600,
                            ),
                            CustomText(
                              text:
                                  "Category : ${myProduct[index]["category"]}",
                              fSize: 15,
                              fWeight: FontWeight.w600,
                            ),
                            CustomText(
                              text:
                                  "Rating : ${myProduct[index]["rating"]["rate"]}",
                              fSize: 15,
                              fWeight: FontWeight.w600,
                            ),
                            CustomText(
                              text:
                                  "Review : ${myProduct[index]["rating"]["count"]}",
                              fSize: 15,
                              fWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
