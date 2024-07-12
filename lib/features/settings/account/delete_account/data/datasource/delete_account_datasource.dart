import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';

abstract class DeleteAccountDatasource {
  Future<void> deleteAccount({required String password});
}

@LazySingleton(as: DeleteAccountDatasource)
class DeleteAccountDatasourceImpl implements DeleteAccountDatasource {
  final DioFactory dioFactory;

  DeleteAccountDatasourceImpl({required this.dioFactory});

  @override
  Future<void> deleteAccount({required String password}) async {
    try {
      await dioFactory.post("", data: {"password": password});

      return;
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }
}
