abstract class ICommand<TParam, TReturn> {
  Future<TReturn?> execute({TParam? param});
}
