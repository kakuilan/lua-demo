-- 使用select变长参数数组的长度,或第N个参数

do 
  function foo(...)
    for i=1, select("#", ...) do --> 获取变长参数的总数(长度)
      local arg = select(i, ...) --> 读取第N个参数
      print('arg:', arg)
    end
  end
  foo(1, 3, 5, 7)
end


