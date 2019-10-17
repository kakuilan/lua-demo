-- 可以通过 select("#",...) 来获取可变参数的数量

function average(...)
  result = 0
  local arg = {...}
  for i,v in ipairs(arg) do
    result = result +v
  end
  print('总共传入:' .. select("#", ...) ..' 个参数') 
  return result / select("#", ...)
end

print('平均值为:', average(10, 5, 3, 4, 5,6 ))