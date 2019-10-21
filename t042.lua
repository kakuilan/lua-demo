-- 文件IO-简单模式

-- 以只读方式打开文件
file = io.open('hello.lua', "r")

-- 设置默认输入文件为 hello.lua
io.input(file)

-- 输出文件第一行
print(io.read())

-- 关闭打开的文件
io.close(file)

-- 以附加的方式打开只写文件
file = io.open('tmp.log', "a")

-- 设置默认输出文件为 tmp.log
io.output(file)

-- 在文件最后一行添加 lua 注释
io.write('-- 这是lua注释')

-- 关闭打开的文件
io.close(file)


