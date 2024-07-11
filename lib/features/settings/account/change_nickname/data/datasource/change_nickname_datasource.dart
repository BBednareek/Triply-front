import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';

abstract class ChangeNicknameDatasource {
  Future<void> changeNickname({required String nickname});
}

@LazySingleton(as: ChangeNicknameDatasource)
class ChangeNicknameDatasourceImpl implements ChangeNicknameDatasource {
  final DioFactory dioFactory;

  ChangeNicknameDatasourceImpl({required this.dioFactory});

  @override
  Future<void> changeNickname({required String nickname}) async {
    try {
      await dioFactory.post("", data: {"nickname": nickname});
      return;
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }
}
