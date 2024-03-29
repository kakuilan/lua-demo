-- table表的用法

-- 创建一个空的table
local tbl1 = {}

-- 直接初始化表
local tbl2 = {"apple", "pear", "orange", "grape"}
print(tbl2)

-- table其实是一个关联数组
a = {}
a['key'] = 'value'
key = 10
a[key] = 22
a[key] = a[key] + 11

for k,v in pairs(a) do 
  print(k .. " : " ..v)
end  

-- table索引从1开始
local tb2 = {"apple", "pear", "orange", "grape"}
for key,val in pairs(tb2) do 
  print("key:", key, " value:", val)
end  

a3 = {}
for i = 1, 10 do
  a3[i] = i
end

a3['key'] = 'val'
print(a3['key'])
print(a3['none'])

-- 获取表长度
print(table.getn(a))
print(table.maxn(tb2))
print(#a)
print(#a3)
