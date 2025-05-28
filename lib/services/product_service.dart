import 'dart:io';
import 'package:dio/dio.dart';
import 'package:lesson_demos/models/products_model.dart';

class ProductService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://api.escuelajs.co/api/v1'));

  Future<List<ProductsModel>> fetchProducts() async {
    var result = await _dio.get('/products');
    if (result.statusCode != HttpStatus.ok) return [];
    return (result.data as List).map((e) => ProductsModel.fromJson(e)).toList();
  }
}
