-- 元表 __newindex 方法

mymetatable = {}
mytable = setmetatable({key1='value1'},{__newindex = mymetatable})

print(mytable.key1)

--赋值新索引操作
mytable.newkey = '新值2'
print(mytable.newkey, mymetatable.newkey)

--修改旧索引值
mytable.key1 = '新值1'
print(mytable.key1, mymetatable.key1)

-- 使用rawset函数更新表
mytable = setmetatable({key1='value1'}, {
  __newindex = function(mytable, key, value)
    rawset(mytable, key, "\"[" ..value.. "]\"")
  end
})
mytable.key1 = 'new-value'
mytable.key2 = 4
print(mytable.key1, mytable.key2)
