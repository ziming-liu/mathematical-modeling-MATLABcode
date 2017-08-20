## clc和clear命令：

   在MATLAB中，clc和clear命令是大家经常用到的命令，熟练使用这两个命令可为编程提供很大的方便。

​      clc命令是用来清除命令窗口的内容，这点不用多说。不管开启多少个应用程序，命令窗口只有一个，所以clc无论是在脚本m文件或者函数m文件调用时，clc命令都会清除命令窗口的内容。


 clear命令可以用来清除工作空间的内容。MATLAB有个基本的工作空间，用base标识，此外，当打开一个函数m文件时，可能会产生很多工作空间。每一个函数对应一个工作空间。例如，一个图形用户界面程序test，可能有test、gui_mainfcn、pushbutton1_callback等工作空间。这时，如果调用clear命令时，需要注意了：

​      如果在pushbutton1callback函数内调用clear，则只删除pushbutton1callback工作空间内的内容。clear对其它工作空间，如base工作空间，是不起作用的。

​      如果用户想在pushbutton1的callback中调用clear命令来删除基本工作空间中的内容，可以使用evalin命令。

​      evalin命令是在指定的工作空间中执行matlab语句的。其中之一的调用格式为：evalin(ws, expression)。ws为工作空间的名字，如'base',expression为matlab语句。

​      使用evalin('base','clear'); 就可以删除基本工作空间中的数据了。





