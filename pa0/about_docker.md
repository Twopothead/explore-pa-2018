### PA0

##### about docker

- ssh: connect to host localhost port 22: Connection refused

  - sudo apt-get install openssh-server

- 容器与主机互拷文件
  - scp -P 20022 ics@127.0.0.1:/home/ics/pa/hello.c .
    - ubuntu拷贝容器里的东西，命令要在ubuntu里面敲
    - （在docker里面敲导致的错误）ics@79bac4931418:~$ tree
      .
      ├── hello.c
      └── pa
      ​        └── hello.c
  - scp -P 20022 Dockerfile ics@127.0.0.1:/home/ics/pa
    - 从ubuntu拷贝到docker,命令要在docker里面敲
    - ics@79bac4931418:~$ tree  (从Ubuntu拷贝到docker)
      .
      ├── hello.c
      └── pa
      ​        ├── Dockerfile
      ​        └── hello.c

- https://mirrors.ustc.edu.cn/help/debian.html

  - ```shell
    sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
    ```