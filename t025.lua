-- 字符串操作

-- 单引号
string1 = 'Lua'
print('字符串1 是:', string1)

-- 双引号
string2 = "Hello world"
print("\"字符串2 是\"", string2)

-- [[]]双中括号
string3 = [["Lua 学习"]]
print('字符串3 是:', string3)

-- 全部转换为大写
print('转换为大写:', string.upper(string1))

-- 全部转换为小写
print('转换为小写:', string.lower( string2 ))

-- 字符串替换
print('字符串替换:', string.gsub( string2,'world',"你好!" ))

-- 字符串查找
print('字符串查找:', string.find( "Hello Lua user","Lua", 1 ))

-- 字符串反转
print('字符串反转:', string.reverse( string3 ))

-- 格式化
print(string.format( "the value is:%d", 4))

-- char
print('chat:将整型转换为字符  ', string.char( 97, 98, 99, 100 ))

-- byte
print('byte:将字符转换为整型  ', string.byte( "ABCD", 4))
print('byte:将字符转换为整型  ', string.byte( "ABCD"))

-- 字符串长度
print('字符串长度:', string.len( string3 ))

-- 字符串重复
print('字符串重复:', string.rep( string1, 3 ))

-- 字符串正则匹配
print('字符串正则匹配:')
for word in string.gmatch( "Hello lua user","%a+" ) do
  print(word)
end

-- 只匹配第一个
print('只匹配第一个:', string.match("I have 2 questions for you.", "%d+ %a+"))


