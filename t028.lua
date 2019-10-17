-- 迭代器

array = {'Google', 'Facebook'}
for key,value in ipairs(array) do
  print(key, value)
end

-- 无状态迭代器
function square(iteratorMaxCount, currentNumber)
  if currentNumber < iteratorMaxCount then
    currentNumber = currentNumber + 1
    return currentNumber, currentNumber * currentNumber
  end
end

for i,n in square, 3, 0 do
  print(i, n)
end

-- 实现ipairs 和迭代函数
function iter(a, i)
  i = i +1
  local v = a[i]
  if v then
    return i,v
  end
end

function ipairs2(a) 
  return iter, a, 0
end

print('仿ipairs:')
for key, value in ipairs2(array) do
    print(key, value)
end

-- 多状态迭代器
function elementIterator(collection)
  local index = 0
  local count = #collection

  -- 闭包函数
  return function()
    index = index+1
    if index<=count then
      --返回迭代器的当前元素
      return collection[index]
    end
  end
end
print('多状态迭代器:')
for element in elementIterator(array) do
  print(element)
end


