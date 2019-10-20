-- 使用协程模拟生产者-消费者

-- 定义协程
local newProductor

-- 生产者
function productor()
    local i = 0
    while true do
        i = i + 1
        print('生产物品:', i)
        send(i) -- 将生产的物品发送给消费者
    end
end

-- 消费者
function consumer()
    while true do
        local i = receive() --从生产者那里获取物品
        print('获得物品:', i)
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value
end

function send(x)
    coroutine.yield(x) -- x表示需要发送的值,值返回以后,就挂起该协程
end

-- 启动程序
newProductor = coroutine.create(productor)
consumer()