-- 多个变量赋值

a, b, c = 0, 1
print(a, b, c) --> 0 1 nil

a, b = a + 1, b+1, b+2 --> value of b+2 is ignored
print(a,b)

a,b,c = 0
print(a, b, c)    --> 0 nil nil
