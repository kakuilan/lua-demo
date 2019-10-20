-- 元表的 __tostring 元方法

mytable = setmetatable({10, 20, 30}, {
  __tostring = function(mytable) 
    sum = 0
    for k,v in pairs(mytable) do
      sum = sum + v
    end
    return '表所有的元素的和为:' .. sum
  end
})

print(mytable)