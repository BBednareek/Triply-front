import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/test/datasource/datasource.dart';

abstract class TestRepository {
  Future<Either<Failure, Map<String, dynamic>>> get();
}

@LazySingleton(as: TestRepository)
class TestRepositoryImpl implements TestRepository {
  final TestDatasource testDatasource;

  TestRepositoryImpl({required this.testDatasource});

  @override
  Future<Either<Failure, Map<String, dynamic>>> get() async {
    try {
      final Map<String, dynamic> result = await testDatasource.get();
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
