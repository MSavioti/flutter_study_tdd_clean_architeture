import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:study_flutter_clean_architeture/core/error/failures/failure.dart';
import 'package:study_flutter_clean_architeture/core/usecases/usecase.dart';
import 'package:study_flutter_clean_architeture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_flutter_clean_architeture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  const GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});
  @override
  List<Object?> get props => [number];
}
