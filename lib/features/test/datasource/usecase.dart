import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/test/datasource/repository.dart';

@lazySingleton
class Usecase {
  final TestRepository testRepository;

  Usecase({required this.testRepository});

  Future<Either<Failure, Map<String, dynamic>>> call() async =>
      await testRepository.get();
}
