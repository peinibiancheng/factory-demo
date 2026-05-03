# Java 工厂设计模式演示项目

本项目演示了 Java 中经典的 **工厂设计模式 (Factory Design Pattern)**。

## 项目简介
工厂模式属于创建型模式，它提供了一种创建对象的最佳方式，而无需向客户端暴露创建逻辑。

## 快速开始

### 环境要求
- JDK 17 或更高版本
- Maven
- Make (可选，推荐在 WSL/Linux 下使用)

### 使用 Makefile (推荐)
在项目根目录下，您可以使用以下命令：

| 命令 | 说明 |
| :--- | :--- |
| `make` | 默认执行编译和运行 |
| `make compile` | 编译 Java 源代码 |
| `make run` | 使用 Maven 直接运行程序 |
| `make jar` | 将项目打包成可执行的 JAR 文件 |
| `make clean` | 清理编译生成的 target 目录 |
| `make help` | 查看所有可用命令 |

### 手动运行 JAR
如果您已经运行了 `make jar`，可以通过以下方式直接运行程序：
```bash
java -jar target/factory-demo-1.0-SNAPSHOT.jar
```

## 设计模式结构
1. **Shape (接口)**: 所有具体图形的公共接口。
2. **Circle/Rectangle/Square (实现类)**: 具体的图形对象。
3. **ShapeFactory (工厂类)**: 根据传入的参数决定实例化哪一个具体类。

## 代码路径
- 源代码: `src/main/java/com/example/factory/`
- 配置文件: `pom.xml`, `Makefile`
