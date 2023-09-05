import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mentea/features/auth/repository/i_auth_repository.dart';

import '../../../core/errors/failures.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> registerUser(String email, String password, String name) async {
    return Left(Failure.network());
  }

  @override
  Future<Either<Failure, Unit>> loginUser(String email, String password) async {
    return Left(Failure.network());
  }
}
