-- 变量

a = 5   --全局变量
local b = 5   --局部变量

function joke()
  c = 5   --全局变量
  local d = 6 --局部变量
end

joke()
print(c,d)

do 
  local a = 6 --局部变量
  b = 6     --对局部变量重新赋值
  print(a,b)
end

print(a, b)

-- 对多个变量同时赋值
a,b = 10, 2 * 3   --即, a=10; b = 2*2

-- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值
a,b = b,a
print(a, b)

tab = {'aa', 'bb'}
tab[1], tab[2] = tab[2], tab[1]
for k,v in pairs(tab) do 
  print("k:", k, "v:", v)
end
