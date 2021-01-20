function num = GetNum(value)

num=[];
temp_num = erase(value,{'[',']'});
a = split(temp_num,{' ',','});
num = str2double(a);