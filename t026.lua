-- 字符串格式化
string1 = 'Lua'
string2 = 'Tutorial'

number1 = 10
number2 = 20

--基本字符串格式化
print(string.format("基本格式化 %s %s", string1, string2))

--日期格式化
date = 2; month = 1; year = 2019;
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))

--十进制格式化
print(string.format("%.4f", 1 / 3))

print('----------------分割线-------------------')
print("将数字格式化为ascii字符:", string.format( "%c",83 ))
print("将数字转换为有符号整数:", string.format( "%+d", 17.0 ))
print("格式化为带填充值且固定宽度的字符串:", "%05d", 17)
print("格式化为8进制:", string.format( "%o", 17 ))
print("格式化为无符号整数:", string.format( "%u", -3.14 ))
print("格式化为小写的16进制:", string.format( "%x", 13 ))
print("格式化为大写的16进制:", string.format( "%X", 13 ))
print("格式化为小写字母e的科学计数法:", string.format( "%e", 1000 ))
print("格式化为大写字母E的科学计数法:", string.format( "%E", 1000 ))
print("格式化为浮点数:", string.format( "%6.3f", 13 ))
print(string.format( "%q", "One\nTwo" ))
print(string.format( "%s", "monkey" ))
print(string.format( "%10s", "monkey" ))
print(string.format( "%5.3s", "monkey" ))



