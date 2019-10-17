-- 定义一个简单的模块

-- 文件名为t031.lua
-- 定义一个名为t031的模块
t031 = {}

-- 定义一个常量
t031.constant = '这是一个常量'

-- 定义一个函数
function t031.func1()
  io.write('这是一个公有函数!\n')
end

local function func2()
  print('这是一个私有函数!')
end

function t031.func3()
  func2()
end

-- 返回模块
return t031
