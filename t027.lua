-- 数组

-- 一维数组
array = {"Lua", "Tutorial"}
for i=0, 2 do
  print(array[i])
end

-- 可以设置负数索引
array = {}
for i=-2, 2 do
  array[i] = i * 2
end

for i=-2, 2 do
  print(array[i])
end

-- 多维数组
array = {}
for i=1,3 do
  array[i] = {}
  for j=1,3 do
    array[i][j] = i * j
  end
end
print(array)

