-- coroutine使用
-- 创建一个协程
co = coroutine.create(
function(i)
    print('协程0:', i);
end
)

-- 重启协程
coroutine.resume(co, 1)
print('协程状态:', coroutine.status(co))

print('----------分割线------------')

co = coroutine.wrap(
function(i)
    print('协程1:', i);
end
)
co(1)

print('----------分割线------------')

co2 = coroutine.create(
function()
    for i = 1, 10 do
        print('协程2:', i)
        if i == 3 then
            print('协程2状态:', coroutine.status(co2))
            print('协程2的线程号:', coroutine.running())
        end
        coroutine.yield() --协程挂起
    end
end
)

coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))   -- suspended
print(coroutine.running())
print('----------分割线------------')