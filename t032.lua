-- 引用模块

require('t031')
print(t031.constant)
t031.func3()

-- 使用别名
local m = require('t031')
print(m.constant)
m.func3()

print(package.path)