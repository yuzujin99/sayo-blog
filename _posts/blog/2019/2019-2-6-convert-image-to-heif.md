---
layout: post
title: 把图片转换为 heif 格式
tags: [image, tip, life]
comment: true
---

减小图片库体积: 使用 preview 将图片转换为 heif 格式.

⚠️ 注意: 本教程仅提供方法参考, 对图片和信息的丢失不负任何责任.

## 准备

- 一台 macos 设备
- 你的图片库

## 为什么要将图片转换成 heif

我们使用相机来记录生活和喜悦, 与此同时, 所收藏的图片也在随着回忆的增加而不断增多, 占据着我们的设备容量.

图片不像文件, 可以方便地的归档压缩, 以减少其体积. 科学的图片管理方式是使用诸如 apple photos, lightroom, google photo 这类的图片管理服务来对图片进行收纳和归类. 这些图片管理服务不仅可以可以让用户根据时间线进行归类, 更可以在不复制图片的情况下, 将多个时间点的同类图片归类, 甚至可以利用地理位置信息将图片显示在世界地图上, 或通过机器学习让图片根据人脸进行归类.

但是图片管理服务在带给我们便利的同时, 也给我们带来的储存方面的烦恼. 较早的 ios 设备 或是 android 设备 拍摄的图片, 是使用 jpeg 格式来进行储存的. 这种格式出现时间较早, 其古老的的压缩算法导致了 jpeg 格式的图片体积偏大. [heif](https://wikipedia.org/wiki/High_Efficiency_Image_File_Format) 是一种由 [mpeg](https://mpeg.chiariglione.org) 创立的全新图片格式, 相同内容的图片仅有之前的一半大小[^1].

由此可见, 将现有图片转换为 heif 可以明显减小图片库的体积.  (我尝试过使用 imagemagick, ffmpeg 将进行图片转换, 但是都遇到困难无法进行正常转换)

## 如何将图片转化为 heif

1. 使用 apple photos 对图片进行筛选

打开 photos, 并创建一个 smart album, 并根据下图进行配置.  (仅作为参考, 如果你会使用 smart album, 可以自行配置)

![smart album setup](/asset/image/2019-2-6-convert-image-to-heif/image-20190206155059774.png)

你将会在这个 smart  album 中获得 除了 heif, gif, live photo 并且不放在个人收藏和任何相册中的图片.  (个人收藏和相册中的图片可以在最后单独转换)

2. 二次筛选

由于 preview 的限制, 若同时打开多种格式的文件, 将无法全选导出. 所以我们需要在对不同文件格式依次进行转换.

在右上角的 搜索框 中输入 jpg, 首先选出我们最常使用的 jpeg 格式.

由于电脑性能的关系, 同时打开超过 1000个 图片可能导致性能不稳定, 甚至会让 preview 卡退. 所以我们需要手动选出 1000个 图片.  (按住 `shift` 进行多选, 选择完毕后, 可以右键查看已选文件的个数)

![search .jpg photo](/asset/image/2019-2-6-convert-image-to-heif/image-20190206162835587.png)

3. 使用 preview 进行转换

双击上一步选择的文件, 会使用 preview 同时打开多个文件.

由于 preview 的问题, 我们需要先将所有图片预览才可以进行全选操作. 所以需要先将 左侧栏目 的 scroll bar 拉到最底, 再进行全选. 然后在 menu bar 中选择 file ->  export selected images...

在弹出菜单后, 点击 option, 将 format 设为 heic, 拖动 quality 到 倒数第二格 (这里可以根据个人需求改变)

然后选择导出的文件夹, 点击 choose 开始导出.

![export photo](/asset/image/2019-2-6-convert-image-to-heif/image-20190206160458423.png)

导出完毕之后, 回到刚才的 finder 窗口, 删除之前选择的文件.

4. 重复步骤

重复 步骤 `2`～`3`, 直到将 jpeg 格式的图片全部转化完成.

然后依次对其他的格式进行转化, 最后对 个人收藏 和 相册 的图片进行单独转化和导入.

5. 导入转换完成的 heif 格式图片

打开 photos, 将转换完成的图片导入 图片库. 在确认转换前后的文件没有缺失后, 可以在第一步中创建的 smart album 全选并删除, 最后清除 recently deleted.

## 从设备导入新图片

当你从不支持 heif 格式的设备导入新的图片时,

重复 步骤 `2`, `3`, `5` 来完成对少量图片格式转换.

## 结果对比

### 原图片库大小

![photo 36.46 gb](/asset/image/2019-2-6-convert-image-to-heif/image-20190206133238.png)

### 转换后图片库大小

![photo 19.62 gb](/asset/image/2019-2-6-convert-image-to-heif/image-20190206211620732.png)

## 结语

随着科技的进步, 今天我们使用 heif 替代了 jpeg, 而由 [aomedia](https://aomedia.org) 开发的 [avif](https://aomediacodec.github.io/av1-avif/), 也将在不远的未来替代 heif[^2]. 可是我们这些随着互联网长大的孩子所拥有的一张张图片, 却很难在新的时代换上新的衣装. 因为没有人给我们提供完善的工具, 在保留图片信息的情况下, 让我们方便地进行格式转换.

apple 的 景深图片 导出后再导入, 将不再作为 景深图片 显示.  (live photo 依然显示) 而在 apple 使用 heif 玩出各种花样 (动态壁纸, 景深图片)  的时候, android 对于新格式的支持却依然不放在心上. android 设备的一张图片可以轻轻松松的达到 4 mb 以上 (apple 设备仅有 1 ～3 mb) , 而且 google 还使用很多私有技术将图片的分享变得困难.

图片, 图片本应该是一个开放的标准, 就像 [mkv](https://matroska.org) 格式一样, 是一个开放的容器. 每个组织都应该遵循一定的标准使用通用的格式, 有序地放入自家的功能, 而不应该固步自封, 使用私有技术, 限制行业的发展, 阻碍科技对生活质量的提升.

希望在不远的将来, avif 可以被大家所接受, 承载人们的希望, 创造一个开放自由的图片环境.

[^1]: https://support.apple.com/en-us/HT208067#11
[^2]: https://github.com/aoMediaCodec/av1-avif/wiki
