import 'dart:io';
import 'package:dio/dio.dart';
import 'package:lesson_demos/models/json_placeholder_model.dart';

class JsonPlaceholderService {
  static const String baseUrl = "https://jsonplaceholder.typicode.com";
  static const String getPosts = "/posts";
  final Dio _dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<List<JsonPlaceholderModel>> fetchPosts() async {
    var result = await _dio.get(getPosts);
    if (result.statusCode != HttpStatus.ok) return [];
    return (result.data as List)
        .map((e) => JsonPlaceholderModel.fromJson(e))
        .toList();
  }
}
