-- 函数作为参赛传递给另外的函数

myprint = function (param)
  print('这是打印函数 - ##', param,'##')
end

function add(num1, num2, functionPrint)
  result = num1 + num2
  -- 调用传递的函数参数
  functionPrint(result)
end

myprint(10)
add(2, 5, myprint)
