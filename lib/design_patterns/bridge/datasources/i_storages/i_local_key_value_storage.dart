abstract class ILocalKeyValueStorage<K, T, C> {
  Future<T> create({K key, required C data});
  Future<List<T>> read(K, key);
  Future<void> update(K key, T data);
  Future<bool> delete(K key);
}
