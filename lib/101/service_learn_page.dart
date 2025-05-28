import 'package:flutter/material.dart';
import 'package:lesson_demos/models/products_model.dart';
import 'package:lesson_demos/services/product_service.dart';

class ServiceLearnPage extends StatefulWidget {
  const ServiceLearnPage({super.key});

  @override
  State<ServiceLearnPage> createState() => _ServiceLearnPageState();
}

class _ServiceLearnPageState extends State<ServiceLearnPage> {
  List<ProductsModel>? _products;
  bool _isloading = false;

  void changeLoading() {
    setState(() {
      _isloading = !_isloading;
    });
  }

  void fetchPost() async {
    changeLoading();
    _products = await ProductService().fetchProducts();
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Learn"),
        actions: [
          _isloading
              ? const CircularProgressIndicator.adaptive()
              : SizedBox.shrink(),
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              fetchPost();
            },
            child: const Text("Fetch Post"),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _products?.length ?? 0,
              itemBuilder: (context, index) {
                final product = _products?[index];
                return SizedBox(
                  width: 160, // Genişlik veriyoruz
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product?.title ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(product?.price.toString() ?? ''),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
