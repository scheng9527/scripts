Dim ws
set ws=wscript.createobject("wscript.shell")
ws.run "cmd /k d: && cd D:\alist-windows-amd64 && .\alist.exe server",vbhide

wscript.sleep(30)

ws.run "cmd /k rclone mount yunpan:/Aliyundrive F: --vfs-cache-mode writes --cache-dir D:\aliyun --network-mode --no-check-certificate --default-permissions --header ""Referer:https://www.aliyundrive.com/"" --vfs-read-chunk-size-limit 1G --vfs-read-chunk-size 64M --dir-cache-time 12h --buffer-size 32M",vbhide

ws.run "cmd /k rclone.exe mount yunpan:/BaiduNetdisk G: --vfs-cache-mode writes --cache-dir D:\bd --network-mode --no-check-certificate --default-permissions --header ""User-Agent:pan.baidu.com"" --vfs-read-chunk-size-limit 1G --vfs-read-chunk-size 64M --dir-cache-time 12h --buffer-size 32M",vbhide
