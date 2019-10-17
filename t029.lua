-- table表

-- 初始表
mytable = {}

-- 指定值
mytable[1] = 'Lua'

-- 移除引用,lua垃圾回收会释放内存
mytable = nil

-- 简单应用
mytable = {}
print('mytable的类型是:', type(mytable))

mytable[1] = 'Lua'
mytable['wow'] = '修改前'
print('mytable索引为1的元素是:', mytable[1])
print('mytable索引为wow的元素是:', mytable.wow)

-- table2和mytable是指向同一table
table2 = mytable
print('table2索引为1的元素是:', table2[1])
print('table2索引为wow的元素是:', table2.wow)

table2['wow'] = '修改后'
print('mytable索引为wow的元素是:', mytable.wow)

-- 释放变量
table2 = nil
print('table2是:', table2)

-- mytable仍然可以访问
print('mytable索引为wow的元素是:', mytable.wow)

-- 也释放mytable
mytable = nil
print('mytable是:', mytable)
