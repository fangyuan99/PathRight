# PathRight

[English Version](#pathright-1)

🎯 一个智能的 Windows 工具，让您通过右键菜单轻松管理系统 PATH 环境变量。

## ✨ 特色功能

- 🖱️ 通过右键"发送到"菜单，一键添加路径到系统 PATH
- 🧠 智能路径处理：
  - 选择文件夹时：直接添加该文件夹到 PATH
  - 选择文件时：自动添加该文件的父文件夹到 PATH
- 💡 重复路径智能检测，避免重复添加
- ⚡ 无需打开系统设置，即可完成操作

## 📥 安装方法

1. 下载 `add2path.bat` 和 `add2path_install.bat` 两个文件
2. 以管理员身份运行 `add2path_install.bat` 完成安装

## 🚀 使用方法

1. 在要添加到 PATH 的文件或文件夹上右键
2. 选择 "发送到" -> "add2path"
3. 完成！路径已成功添加到系统 PATH 中

## ⚠️ 注意事项

- 需要管理员权限才能修改系统环境变量
- 添加路径后可能需要重启命令行或应用程序才能生效

## 🙏 致谢

安装脚本参考了 [CapsWriter-Offline-CLI](https://github.com/runningcheese/CapsWriter-Offline-CLI) 的实现

## 📄 许可证

MIT License

---

# PathRight

🎯 A smart Windows utility that adds directories to system PATH through context menu.

## ✨ Features

- 🖱️ Quickly add paths to system PATH via the "Send to" right-click menu
- 🧠 Smart path handling:
  - When selecting a folder: adds the folder itself to PATH
  - When selecting a file: adds the file's parent folder to PATH
- 💡 Intelligent duplicate path detection
- ⚡ No system settings manipulation required

## 📥 Installation

1. Download both `add2path.bat` and `add2path_install.bat` files
2. Run `add2path_install.bat` as administrator to install

## 🚀 Usage

1. Right-click on the file or folder you want to process
2. Select "Send to" -> "add2path"
3. Done! The path has been added to system PATH

## ⚠️ Notes

- Administrative privileges are required to modify system environment variables
- You may need to restart command prompts or applications for changes to take effect

## 🙏 Acknowledgments

The install script references [CapsWriter-Offline-CLI](https://github.com/runningcheese/CapsWriter-Offline-CLI)'s implementation

## 📄 License

MIT License 