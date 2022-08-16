import '../service/base_network.dart';

class BookDataSource {
  static BookDataSource instance = BookDataSource();
  Future<Map<String, dynamic>> loadBooks(String text) {
    return BaseNetwork.get(text);
  }
}
