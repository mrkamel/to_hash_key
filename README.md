
# to_hash_key

Generate redis-safe hash keys using SHA1 easily

<pre>
irb> "test".to_hash_key
=> "5006d6f8302000e8b87fef5c50c071d6d97b4e88"
irb> "test".to_hash_key "test"
=> "test_5006d6f8302000e8b87fef5c50c071d6d97b4e88"
</pre>

