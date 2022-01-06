abstract class IRemoteStorage<T, C> {
  Future<T> create(C data);
  Future<List<T>> read();
  Future<void> update(T data);
  Future<bool> delete(T data);
}
