class Hash
  def key
    if self.keys.size == 1
      self.keys[0]
    else
      nil
    end
  end

  def value
    if self.values.size == 1
      self.values[0]
    else
      nil
    end
  end
end
