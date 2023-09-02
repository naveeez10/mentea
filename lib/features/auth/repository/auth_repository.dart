import 'package:dartz/dartz.dart';
import 'package:mentea/features/auth/repository/i_auth_repository.dart';

import '../../../core/errors/failures.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> registerUser(String email, String password, String name) async {}
}
