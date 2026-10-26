#!/bin/sh
# 把平台PORT传给程序，原项目没有适配，这个脚本只能做端口转发
# 方式：socat 转发 $PORT -> 127.0.0.1:9191
socat TCP-LISTEN:${PORT},fork,reuseaddr TCP:127.0.0.1:9191 &
exec /app/91
