abstract class ICommand<T, R> {
  Future<R> execute(T entity);
}
