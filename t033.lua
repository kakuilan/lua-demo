-- 元表
mytable = {} --普通表
mymetatable = {} --元表

--把mymetatable设为 mytable 的元表
setmetatable(mymetatable, mymetatable)

--返回对象元表
getmetatable(mytable)