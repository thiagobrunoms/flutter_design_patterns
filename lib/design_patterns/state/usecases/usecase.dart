abstract class Usecase<TReturn, TParam> {
  Future<TReturn> execute({TParam? param});
}
