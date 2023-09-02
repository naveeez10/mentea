import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';

abstract class IAuthRepository {
  Future<Either<Failure, Unit>> registerUser(String email, String password, String name);

  Future<Either<Failure, Unit>> loginUser(String email, String password);
}
