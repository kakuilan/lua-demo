-- 函数的多返回值
s, e = string.find('www.google.com', 'google')
print(s, e)

function maximum(a)
    local mi = 1  --最大值索引
    local m = a[mi] --最大值

    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end

    -- 多返回值
    return m, mi
end

print(maximum({8, 10, 23, 12, 5}))