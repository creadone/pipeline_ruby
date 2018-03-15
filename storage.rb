module Storage

  @store = {}

  def add(hash)
    @store.merge!(hash)
  end

  def get(key)
    @store[key]
  end

  def clear_store
    @store = nil
  end

end
