-- 函数的可变参数
function add(...)
    local s = 0
    for i, v in ipairs { ... } do --> {...}表示一个有所有变长参数构成的数组
        s = s + v
    end
    return s
end

print(add(3, 4, 5, 6, 7))

-- 将可变参数赋值给一个变量
function average(...)
    result = 0
    local arg = { ... } --> arg为一个表,局部变量
    for i, v in ipairs(arg) do
        result = result + v
    end
    print('总共传入 ' .. #arg .. ' 个数')
    return result / #arg
end

print('平均值为:', average(10, 5, 3, 4, 6))