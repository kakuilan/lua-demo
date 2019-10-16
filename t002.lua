-- nil的删除作用

tab1 = {key1="val1", key2="val2", "val3", "val4"}
for k,v in pairs(tab1) do 
  print(k .. " - " .. v)
end

-- 删除key1
tab1.key1 = nil
print("\r\n")
for k,v in pairs(tab1) do 
  print(k .. " - " .. v)
end
