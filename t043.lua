-- 完全模式-使用file:func代替io.func

-- 以只读方式打开文件
file = io.open('hello.lua', "r")

-- 输出文件第一行
print(file:read())

-- 关闭打开的文件
file:close()

-- 以附加的方式打开只写文件
file = io.open('tmp.log', "a")

-- 在文件最后一行添加
file:write('-- 这里是新加的内容')

-- 关闭打开的文件
file:close()


