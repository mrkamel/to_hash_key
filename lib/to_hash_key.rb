
require "to_hash_key/version"

require "digest"

class Object
  def to_hash_key(prefix = nil)
    if prefix
      return "#{prefix}_#{Digest::SHA1.hexdigest inspect}"
    else 
      return Digest::SHA1.hexdigest(inspect)
    end 
  end 
end

class String
  def has_hash_prefix?(prefix)
    return start_with?(prefix.to_s)
  end 
end

