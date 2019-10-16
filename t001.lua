-- 单行注释,使用dofile函数

--[[
多行注释,在命令行执行

> dofile("t001.lua") -- 加载程序库
> n = norm(3.4, 1.0)
> print(twice(n))
7.0880180586677
]]--

function norm(x,y)
  return (x^2 + y^2) ^ 0.5
end

function twice(x)
  return 2*x
end
