#### Logging in via SSH

##### Creating a Host-only Network(vmware 15)

Vmware Station Edit->virtual Network editor 

vmnet1与vmnet8，一个是host-only，一个是nat，都可以通过vmware的同一个服务进程来自动获取ip。

不同的是，前者不能上网（只是不能通过vmware提供的工具来上网，要用第3方工具的话，什么模式都可以），后者可以用通过vmware的另一个服务进程来进行nat上网。