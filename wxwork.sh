## 查看企业微信磁盘占用情况
du -h -d 1 ~/Library/Containers/com.tencent.WeWorkMac/Data

## 查看某个用户下的文件占用
du -h -d 1 ~/Library/Containers/com.tencent.WeWorkMac/Data/Library/Application\ Support/WXWork/Data
export TMP_UID=xxx

## 查看profile
du -h -d 1 ~/Library/Containers/com.tencent.WeWorkMac/Data/Documents/Profiles
export TMP_PROF=xxx

## 重灾区 - 图片
rm -rf ~/Library/Containers/com.tencent.WeWorkMac/Data/Documents/Profiles/$TMP_PROF/Caches/Images
rm -rf ~/Library/Containers/com.tencent.WeWorkMac/Data/Library/Application\ Support/WXWork/Data/$TMP_UID/Cache//Image/2021-*

## 重灾区 - 视频
rm -rf ~/Library/Containers/com.tencent.WeWorkMac/Data/Documents/Profiles/$TMP_PROF/Caches/Videos
rm -rf ~/Library/Containers/com.tencent.WeWorkMac/Data/Library/Application\ Support/WXWork/Data/$TMP_UID/Cache//Videos

## 重灾区 - backup，按时间戳备份
rm -rf ~/Library/Containers/com.tencent.WeWorkMac/Data/Library/Application\ Support/WXWork/Data/$TMP_UID/Backup/1640930007