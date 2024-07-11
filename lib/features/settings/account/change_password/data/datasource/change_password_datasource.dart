import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';
import 'package:triply/features/settings/account/change_password/domain/entities/change_password_entity.dart';

abstract class ChangePasswordDatasource {
  Future<void> changePassword({required ChangePasswordEntity entity});
}

@LazySingleton(as: ChangePasswordDatasource)
class ChangePasswordDatasourceImpl implements ChangePasswordDatasource {
  final DioFactory dioFactory;

  ChangePasswordDatasourceImpl({required this.dioFactory});

  @override
  Future<void> changePassword({required ChangePasswordEntity entity}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: entity.toJson());

      return;
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }
}
