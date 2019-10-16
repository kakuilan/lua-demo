-- 流程控制语句

-- 注意, lua中 0 为 true
if(0) then
  print('0 为 true')
end

-- if else
a = 100
if(a<20) then
  print('a 小于 20')
else
  print('a 大于 20')  
end


-- if...elseif...else
if(a==10) then
  print('a 的值为 10')
elseif(a==20) then
  print('a 的值为 20')
elseif(a==30) then
  print('a 的值为 30')
else
  print('没有匹配 a 的值')  
end
print('a 的值为 ', a)  
