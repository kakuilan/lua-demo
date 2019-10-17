-- table操作

-- table连接元素
fruits = {'banana', 'orange', 'apple'}
print('连接后的字符串:', table.concat( fruits))
print('连接后的字符串-指定连接字符:', table.concat(fruits, ','))
print('连接后的字符串-指定索引:', table.concat(fruits, ',', 2, 3))

-- 插入和移除元素

--在末尾插入
table.insert(fruits,'mango' )
print('索引为4的元素为:', fruits[4])

-- 在索引为2的键处插入
table.insert(fruits,2, 'grapes' )
print('索引为2的元素为:', fruits[2])

-- 移除元素
print('最后一个元素为:', fruits[5])
table.remove(fruits )
print('移除后,最后一个元素为:', fruits[5])

-- 排序
print('排序前:')
for k,v in ipairs(fruits) do
  print(k,v)
end

table.sort(fruits )
print('排序后:')
for k, v in ipairs(fruits) do
    print(k, v)
end

-- table最大值
tb2 = {[1]=2, [2]=6, [3]=34, [26]=5}
print('tb2的最大值:', table.maxn(tb2))
print('tb2的长度:', #tb2)