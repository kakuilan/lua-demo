-- 关系运算符
a = 21
b = 10

if (a == b) then
    print('Line 1: a等于b')
else
    print('Line 1: a不等于b')
end

if (a ~= b) then
    print('Line 2: a不等于b')
else
    print('Line 2: a等于b')
end

if (a < b) then
    print('Line 3: a小于b')
else
    print('Line 3: a大于等于b')
end

if (a > b) then
    print('Line 4: a大于b')
else
    print('Line 4: a小于等于b')
end

a = 5
b = 20

if (a <= b) then
    print('Line 5: a小于等于b')
end

if (b >= a) then
    print('Line 6: b大于等于b')
end
