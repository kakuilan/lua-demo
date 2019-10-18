-- 元表 __index 方法

other = { foo = 3}
t = setmetatable({}, {__index = other})
print(t.foo)
print(t.name)

-- __index包含一个函数时
mytable = setmetatable({key1="value1"}, {
  __index = function(mytable, key)
    if key=='key2' then
      return 'metatable-value'
    else
      return nil
    end
  end
})

print(mytable.key1, mytable.key2, mytable.key3)
