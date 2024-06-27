import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';

abstract class TestDatasource {
  Future<Map<String, dynamic>> get();
}

@LazySingleton(as: TestDatasource)
class TestDatasourceImpl implements TestDatasource {
  final DioFactory dioFactory;

  TestDatasourceImpl({required this.dioFactory});
  @override
  Future<Map<String, dynamic>> get() async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.get("https://randomuser.me/api/");

      return result['results'];
    } catch (e) {
      rethrow;
    }
  }
}
