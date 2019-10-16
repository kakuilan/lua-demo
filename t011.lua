#!/usr/local/bin/lua

-- for循环

-- 数值for
for i=10, 1, -1 do
  print(i)
end

-- for的三个表达式在循环开始前一次性求值，以后不再进行求值
-- 比如下面的f(x)只会在循环开始前执行一次
function f(x)
  print('function')
  return x *2
end
for i=1, f(5) do
  print(i)
end  

-- 泛型for循环
a = {'one', 'tow', 'three'}
for i,v in ipairs(a) do
  print(i, v)
end

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i,v in ipairs(days) do  print(v) end