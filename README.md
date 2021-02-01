# 2/1 讀書會 Rails render

分享人: 詹昇

- 找 gem source code 方式

```
gem env
```

```
bundle open
```

- 找方法定義在哪邊

```ruby
method(:render).source_location
```

- 恢復 gem

```ruby
gem pristine actionpack
```

- 找方法繼承鍊

```ruby
self.class.ancestors
```


- Ruby includes 示範


```ruby
module A1
  def run
    puts 'A1 run'
    super
  end
end

module A2
  def run
    puts 'A2 run'
    super
  end
end

module A3
  def run
    puts 'A3 run'
    super
  end
end


class Bob
  include A1
  include A2
  include A3

  def run
    puts 'bob run'
    super
  end
end

Bob.new.run
# p Bob.ancestors

```

參考資料
http://owningrails.com/

https://pragprog.com/titles/jvrails2/crafting-rails-4-applications/

![](https://i.imgur.com/1cpdUJv.jpg)
