#Flutter

##一、简介
Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的，Flutter有以下优点：


###快速开发
Flutter的热重载可帮助您快速地进行测试、构建UI、添加功能并更快地修复错误。在iOS和Android模拟器或真机上可以在亚秒内重载，并且不会丢失状态。
![MacDown Screenshot](https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/intellij/hot-reload.gif)

###富有表现力和灵活的UI
使用Flutter内置美丽的Material Design和Cupertino（iOS风格）widget、丰富的motion API、平滑而自然的滑动效果和平台感知，为您的用户带来全新体验。  
![MacDown Screenshot](https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/screenshot-2.png)
![MacDown Screenshot](https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/screenshot-3.png)

###原生性能
Flutter包含了许多核心的widget，如滚动、导航、图标和字体等，这些都可以在iOS和Android上达到原生应用一样的性能  


##二、安装
以macOS平台为例，Windows平台请点击[这里](https://flutterchina.club/setup-windows/)，Linux平台请点击[这里](https://flutterchina.club/setup-linux/)。

###2.1、系统要求
要安装并运行Flutter，您的开发环境必须满足以下最低要求:

* 操作系统: Linux (64-bit)
* 磁盘空间: 600 MB (不包括Android Studio的磁盘空间).
* 工具: Flutter 依赖这些命令行工具（bash, mkdir, rm, git, curl, unzip, which）.

###2.2、获取Flutter SDK
1、 去flutter官网下载其最新可用的安装包，转到[下载页](https://flutter.dev/docs/development/tools/sdk/archive?tab=macos#macos)    

&ensp;&ensp;&ensp;&ensp;Flutter的渠道版本会不停变动，请以Flutter官网为准。另外，在中国大陆地区，要想正常获取安装包列表或下载安装包，可能需要翻墙，读者也可以去Flutter github项目下去下载安装包，转到[下载页](https://github.com/flutter/flutter/releases)。    

2、解压安装包到你想安装的目录，如：

```
cd ~/development
unzip ~/Downloads/flutter_macos_v1.2.1-stable
```
  
3、添加`flutter`相关工具到path中：  

```
export PATH=`pwd`/flutter/bin:$PATH
```
此代码只能暂时针对当前命令行窗口设置PATH环境变量，要想永久将Flutter添加到PATH中请参考下面更新环境变量 部分。    

4、使用镜像  

&ensp;&ensp;&ensp;&ensp;由于在国内访问Flutter有时可能会受到限制，Flutter官方为中国开发者搭建了临时镜像，大家可以将如下环境变量加入到用户环境变量中：  

```
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```
#####注意: 
此镜像为临时镜像，并不能保证一直可用，读者可以参考详情请参考[Using Flutter in China](https://flutter.dev/community/china)以获得有关镜像服务器的最新动态。
  
###2.2、安装配置
1、安装Xcode  

2、Android Studio

* 现在并安装[Android Studio](https://developer.android.com/studio/index.html)
* 安装`Flutter`和`Dart`插件（Android Studio--3.0或更高版本.）  
&ensp;&ensp;***Preferences>Plugins 搜索Flutter和Dart插件并点击`install`，重启Android Studio后插件生效.***  

3、运行 flutter doctor
运行以下命令查看是否需要安装其它依赖项来完成安装：

```
flutter doctor
```
该命令检查环境并在终端窗口中显示报告，细检查命令行输出以获取可能需要安装的其他软件或进一步需要执行的任务。第一次运行一个flutter命令（如flutter doctor）时，它会下载它自己的依赖项并自行编译,以后再运行就会快得多。

##三、简单程序
以Android Studio为例
###3.1、创建新应用
* 选择 File>New Flutter Project
* 选择 Flutter application 作为 project 类型, 然后点击 Next
* 输入项目名称 (如 myapp), 然后点击 Next
* 点击 Finish
* 等待Android Studio安装SDK并创建项目.

###3.2、运行新应用
* 定位到Android Studio 工具栏  

 ![MacDown Screenshot](https://flutterchina.club/images/intellij/main-toolbar.png)
* 在target selector中, 选择一个运行该应用的设备. 如果没有列出可用，请选择 Tools>Android>AVD Manager 并在那里创建一个或打开iOS模拟器；
* 在工具栏中点击 Run图标, 或者调用菜单项 Run > Run.
* 如果一切正常, 您应该在您的设备或模拟器上会看到启动的应用程序:  
![MacDown Screenshot](https://flutterchina.club/images/flutter-starter-app-android.png)


##四、程序简单解析
###4.1、整体解析
首先工程目录如下：  

![MacDown Screenshot](http://cc.cocimg.com/api/uploads//image/20190313/1552465748897446.jpg) 

可分为四个部分：

* Android  
&ensp;&ensp;&ensp;这里存放的是Flutter与android原生交互的一些代码，这个路径的文件和创建单独的Android项目的基本一样的。不过里面的代码配置跟单独创建Android项目有些不一样；
* iOS  
&ensp;&ensp;&ensp;这里存放的是Flutter与ios原生交互的一些代码；
* pubspec.yaml  
&ensp;&ensp;&ensp;配置依赖项的文件，比如配置远程pub仓库的依赖库，或者指定本地资源（图片、字体、音频、视频等）。
* lib目录  
&ensp;&ensp;&ensp;工程代码，Dart语言编写；

###4.2、main.dart代码解析
语法相关可以点击[这里](http://dart.goodev.org/)详细学习Dart语法，这里只是简单的介绍：

```
void main() => runApp(MyApp());
```
这是程序的入口函数，进来首先会调用runApp方法，这里用到了=>箭头函数可理解为下面的代码：

```
void main(){
  return new MyApp();
}
```
main函数返回一个widget，MyApp就是我们要展示的启动界面。MyApp类中返回了一个MaterialApp widget，MaterialApp可以理解为ui的风格，可以自己修改尝试在MaterialApp中我们可以配置主题颜色，控件的样式等等。

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```
如修改以上代码，更改标题，显示内容等，它将在屏幕的中心显示“Hello World”.

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}
```
接下来是MyHomePage这个类
![MacDown Screenshot](https://oscimg.oschina.net/oscnet/ec0237c864db8ea504916a26ee9af9ea899.jpg)
![MacDown Screenshot](https://oscimg.oschina.net/oscnet/f63c50d81c3cd1349854684727e8f8e5e9e.jpg)
StatefulWidget是一个有状态的控件，如果你的页面需要更新ui，那么该页面就要继承自StatefulWidget，但如果只是一个纯展示的页面，只需要继承自StatelessWidget即可，也就是一些静态页面。MyHomePage在上面已经被指定为启动页面，该页面有一个计数的逻辑，会更新ui，所以需要继承自StatefulWidget。  

所有继承自StatefulWidget的控件都要重写createState()这个方法，可以理解为指定该页面的状态是由谁来控制的，在Dart中下划线开头声明的变量和方法，其默认访问权限就是私有的,只能在类的内部访问.

接下来是

```
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
```
Scaffold可以看作是Material Design中的一个模板，看源码发现它继承自StatefulWidget，包含了appBar,body,drawer等控件。

