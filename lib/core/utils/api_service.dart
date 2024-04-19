import 'package:dio/dio.dart';

class ApiService{
  static const baseUrl='https://www.googleapis.com/books/v1/';
  static const booksEndPoint='volumes?Filtering=free-ebooks&q=computer science';
  final Dio dio;
  ApiService({required this.dio});
  Future<Response> get({required endPoint}) async{
    return await dio.get(baseUrl+booksEndPoint);
  }
}