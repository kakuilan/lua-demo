-- 字符串用法

string1 = "this is string1"
string2 = 'this is string2'
print(string1, string2)

-- 多行字符串
html = [[
<html>
<head></head>
<body>
    <a href="http://baidu.com/">baidu</a>
</body>
</html>
]]
print(html)

-- 字符串连接
print("a" .. 'b')

-- 字符串长度统计
print(#html)