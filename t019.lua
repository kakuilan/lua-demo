-- 有固定参数和可变参数时,固定参数必须放置变长参数之前

function fwrite(fmt, ...) --> 固定的参数fmt
  return io.write(string.format( fmt,... ))
end

fwrite('hellow world\n') --> fmt='hellow world',没有变长参数
fwrite("%d %d\n", 1, 2) --> fmt = '%d %d',变长参数为1和2
