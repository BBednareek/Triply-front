import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';
import 'package:triply/features/settings/account/change_email/domain/entities/change_email_entity.dart';

abstract class ChangeEmailDatasource {
  Future<void> changeEmail({required ChangeEmailEntity entity});
}

@LazySingleton(as: ChangeEmailDatasource)
class ChangeEmailDatasourceImpl implements ChangeEmailDatasource {
  final DioFactory dioFactory;

  ChangeEmailDatasourceImpl({required this.dioFactory});

  @override
  Future<void> changeEmail({required ChangeEmailEntity entity}) async {
    try {
      await dioFactory.post("", data: entity.toJson());

      return;
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }
}
