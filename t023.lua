-- 逻辑运算符
a = true
b = true

if (a and b) then
    print('a and b:条件为true')
end

if (a or b) then
    print('a or b:条件为true')
end

print('---------分割线---------')

--修改a,b的值
a = false
b = true

if (a and b) then
    print('a and b:条件为true')
else
    print('a and b:条件为false')
end

if (not (a and b)) then
    print('not(a and b):条件为true')
else
    print('not(a and b):条件为false')
end
