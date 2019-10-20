-- 协程实例

function foo(a)
    print('foo函数输出:', a)
    return coroutine.yield(2 * a) -- 返回2*a的值,并挂起
end

co = coroutine.create(
function(a, b)
    print('第一次协程输出:', a, b) -- a,b为第一次调用时的参数,为1,10
    local r = foo(a + 1)

    print('第二次协程输出:', r) -- r为第二次调用时的参数,为'r'
    local r, s = coroutine.yield(a + b, a - b) --a,b的值为第一次调用协程时传入

    print('第三次协程输出:', r, s) -- r,s为第三次调用时的参数,为'x','y'
    return b, '结束协程' --b的值为第一次调用协程时传入
end
)

print('main:', coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print('main:', coroutine.resume(co, 'r')) -- true 11 -9
print("--分割线----")
print('main:', coroutine.resume(co, 'x', 'y')) -- true 10 '结束协程'
print("--分割线----")
print('main:', coroutine.resume(co, 'x', 'y')) -- false    cannot resume dead coroutine
print("--分割线----")