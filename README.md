# Add2Path

A simple tool to quickly add folders to Windows system PATH environment variable.

## Features

- Quickly add folders to system PATH via the "Send to" right-click menu
- Smart path handling:
  - When sending a folder: adds the folder itself to PATH
  - When sending a file: adds the file's parent folder to PATH

## Installation

1. Download both `add2path.bat` and `add2path_install.bat` files
2. Run `add2path_install.bat` to install

## Usage

1. Right-click on the folder or file you want to process
2. Select "Send to" -> "add2path"
3. Done! The appropriate path has been added to system PATH

## Notes

- Administrative privileges are required to modify system environment variables

## Acknowledgments

The install script references https://github.com/runningcheese/CapsWriter-Offline-CLI's implementation

## License

MIT License

---

# Add2Path

一个简单的工具，用于快速将文件夹添加到 Windows 系统的 PATH 环境变量中。

## 功能

- 通过右键"发送到"菜单快速将文件夹添加到系统 PATH
- 智能路径处理：
  - 发送文件夹时：将该文件夹本身添加到 PATH
  - 发送文件时：将该文件所在的父文件夹添加到 PATH

## 安装

1. 下载 `add2path.bat` 和 `add2path_install.bat` 两个文件
2. 运行 `add2path_install.bat` 进行安装

## 使用方法

1. 在要处理的文件或文件夹上右键
2. 选择"发送到" -> "add2path"
3. 完成！相应的路径已被添加到系统 PATH 中

## 注意事项

- 需要管理员权限来修改系统环境变量

## 致谢

install 脚本参考了 https://github.com/runningcheese/CapsWriter-Offline-CLI 的实现

## 许可证

MIT License 