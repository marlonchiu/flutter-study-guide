---
title: Flutter入门笔记
date: '2019-08-26'
type: 技术
tags: Flutter
sidebarDepth: 3
sidebar: auto
note: Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。
---

# Flutter入门笔记

## 第一部分

### 第01节：认识Flutter

* 学习指导：
  * [Flutter官方网站](https://flutter.dev/)
* [Flutter免费视频第一季](https://jspang.com/posts/2019/01/20/flutter-base.html)
  * [Flutter免费视频第二季](https://jspang.com/posts/2019/01/21/flutter-base2.html)
  * [Flutter免费视频第三季](https://jspang.com/posts/2019/01/28/flutter-base3.html)
  * [Flutter免费视频第四季](https://jspang.com/posts/2019/02/01/flutter-base4.html)
  
* Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。

* 核心重点有三个：
  * **跨平台：**现在Flutter至少可以跨4种平台，甚至支持嵌入式开发。我们常用的有Linux、Android、IOS，甚至可以在谷歌最新的操作系统上Fuchsia进行运行,经过第三方扩展，甚至可以跑在MacOS和Windows上，到目前为止，Flutter算是支持平台最多的框架了，良好的跨平台性，直接带来的好处就是减少开发成本。
  * **原生用户界面：** 它是原生的，让我们的体验更好，性能更好。用官方的话讲就是平滑而自然的滑动效果和平台感知，为您的用户带来全新的体验。
  * **开源免费**

### 第02-04节：搭建开发环境

参照博客指导一步步进行即可

### 第05节：VSCode下如何玩转Flutter

* 步骤

* 1） vscode安装flutter插件

* 2）创建快速开启虚拟机指令

  ```bash
  全局搜索找到打开emulator.exe这个程序，在emulator文件夹下的
  打开你设置的虚拟机，批处理时需要填写你设置的虚拟机名称。
  
  新建一个xxx.bat文件到桌面，叫EmulatorRun.bat，编辑如下
  C:\Users\zhaojd\AppData\Local\Android\Sdk\emulator\emulator.exe -netdelay none -netspeed full -avd Nexus_5X_API_28
  
  # 参数解释：
  -netdelay none :设置模拟器的网络延迟时间，默认为none，就是没有延迟。
  -netspeed full: 设置网络加速值，full代表全速。
  ```

* 双击刚才创建的`EmulatorRun.bat`，启动虚拟机
* 终端运行 `flutter run`

### 第06节：写一个HelloWorld程序

写在`根目录\lib\main.dart`文件中，这就是Flutter主文件

```dart
import 'package:flutter/material.dart';
// 主函数（入口函数）
void main() => runApp(MyApp());

// 声明MyApp类
class MyApp extends StatelessWidget {
  // 重写build方法
  @override
  Widget build(BuildContext context) {
    // 返回一个Material风格的组件
    return MaterialApp(
      title: 'MarlonChiu Welcome To Flutter',
      home: Scaffold(
        // 创建一个Bar 并添加文本
        appBar: AppBar(
          title: Text(' Welcome To Flutter'),
        ),
        // 在主体的中间区域，添加hello World文本
        body: Center(
          child: Text('Hello World, Marlon!'),
        ),
      ),
    );
  }
}
```

* StatefulWidget和StatelessWidget
  - `StatefulWidget` ： 具有可变状态的窗口部件，也就是你在使用应用的时候就可以随时变化，比如我们常见的进度条，随着进度不断变化。
  - `StatelessWidget`：不可变状态窗口部件，也就是你在使用时不可以改变，比如固定的文字（写上后就在那里了，死也不会变了）。这个HelloWorld代码就继承了不可变窗口部件`StatelessWidget`。

* VSCode中如何热加载

  ```bash
  # 在终端中如下指令
  # 按 “R" 键，开启热更新，重新加载
  # 按 “P" 键，打开网格
  # 按 “O" 键，切换android和ios的预览模式(直观视图效果，android中appBar左侧显示，ios在中间)
  # 按 “Q" 键，退出调试预览模式
  
  # 热更新还可以在VScode中启动调试模式
  ```

  

##  第二部分 组件（widget）的使用

### 第01节：Text Widget 文本组件的使用

### 第02节：Container容器组件的使用

### 第04节：Image图片组件的使用

### 第05节：ListView 列表组件简介

### 第06节：横向列表的使用

### 第07节：动态列表的使用

```dart
// ListView 列表组件的使用
import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: new List<String>.generate(1000, (i) => 'Item $i')
));
// main函数的runApp中调用了MyApp类，再使用类的使用传递了一个items参数,并使用generate生成器对items进行赋值。

// generate方法传递两个参数，第一个参数是生成的个数，第二个是方法

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView 动态列表'),
            ),
            body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: new Text('${items[index]}'),
                );
              },
            )));
  }
}
```

### 第08节：GridView网格列表组件

```dart
// GridView网格列表组件的使用
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GridView Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView 网格列表'),
            ),
            // body: GridView.count(
            //   // padding: const EdgeInsets.all(20.0), // 内边距
            //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 0), // 内边距
            //   crossAxisSpacing: 10.0, // 网格之间的空隙
            //   crossAxisCount: 3, // 网格的列数 一行显示几个
            //   children: <Widget>[
            //     const Text('I LOVE CODE'),
            //     const Text('MARLONCHIU'),
            //     const Text('I LOVE CODE'),
            //     const Text('I LOVE CODE'),
            //   ],
            // )
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0, // 网格之间的间距（主/纵轴）
                crossAxisSpacing: 2.0, // 网格之间的间距（辅/横轴）
                childAspectRatio: 0.7  // 宽高比
              ),
              children: <Widget>[
                new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
              ],
            ),
      )
    );
  }
}

```

## 第三部分：布局

```bash
# 初始化构建一个flutter项目
 
flutter create demo03

# 版本升级
flutter upgrade
```

### 第01节：水平布局Row的使用

### 第02节：垂直布局Column组件

### 第03节：Stack层叠布局

### 第04节：Stack的Positioned属性

### 第05节：卡片组件布局

## 第四部分：页面导航

### 第01节：一般页面导航和返回

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: '导航演示一',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('点击查看商品详情'),
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.push(context,
              new MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回上一级'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      );
  }
}
```

### 第02节：导航参数的传递和接收

```dart
import 'package:flutter/material.dart';

// 声明商品类
class Product {
  final String title; // 商品标题
  final String description; // 商品详情
  Product(this.title, this.description);
}

// 主入口文件
void main() => runApp(
  MaterialApp(
    title: '数据传递实例',
    home: ProductList(
      products: List.generate(20, 
      (i) => Product('商品 $i', '这是一个商品详情，编号是：$i')
      )
    ),
  )
);

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key,@required this.products}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> ProductDetail(product:products[index])
              ));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}
```

### 第04节：页面跳转并返回数据

* SnackBar的使用

  `SnackBar`是用户操作后，显示提示信息的一个控件，类似`Tost`，会自动隐藏。`SnackBar`是以`Scaffold`的`showSnackBar`方法来进行显示的。

  ```dart
  Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
  ```

* demo代码

  ```dart
  import 'package:flutter/material.dart';
  
  void main() => runApp(MaterialApp(title: '页面跳转返回数据', home: FirstPage()));
  
  class FirstPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('找小姐姐要电话'),
        ),
        body: Center(
          child: RouteButton(),
        ),
      );
    }
  }
  
  // 跳转的button
  class RouteButton extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return RaisedButton(
        onPressed: () {
          _navigateToXiaoJieJie(context);
        },
        child: Text('去找小姐姐'),
      );
    }
  
    // 异步请求和等待
    // 核心代码 ---start
    _navigateToXiaoJieJie(BuildContext context) async {
      final result = await Navigator.push(
          context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
  
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
    }
    // 核心代码 ---end
  }
  
  class XiaoJieJie extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('我是小姐姐'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('大长腿小姐姐'),
                onPressed: () {
                  Navigator.pop(context, '大长腿:1511008888');
                },
              ),
              RaisedButton(
                child: Text('小蛮腰小姐姐'),
                onPressed: () {
                  Navigator.pop(context, '小蛮腰:1511009999');
                },
              ),
            ],
          ),
        ),
      );
    }
  }
  ```

  

### 第05节：静态资源和项目图片的处理



### 第06节：Flutter客户端打包

 * 配置APP的名称、图标和系统权限

   ```text
   // 项目根目录/android/app/src/main/AndroidManifest.xml
   
   android:label="flutter_app"   //配置APP的名称，支持中文
   android:icon="@mipmap/ic_launcher" //APP图标的文件名称
   ```

   

* 生成 keystore

  ```bash
  keytool -genkey -v -keystore E:\Flutter\key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
  
  C:\'Program Files'\Android\'Android Studio'\jre\bin\keytool -genkey -v -keystore E:\Flutter\key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
  ```

* 创建`key.properties`的文件

  ```text
  有了这个key.jks文件后，可以到项目目录下的android文件夹下，创建一个名为key.properties的文件,并打开粘贴下面的代码。
  
  storePassword=123456
  keyPassword=123456
  keyAlias=key
  storeFile=E:/Flutter/key.jks
  
  注释说明：
      storePassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥库 密码
      keyPassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥 密码
      keyAlias=key
      storeFile=<E:/key.jks>    //key.jks的存放路径
  ```

  

* 配置key注册

  key生成好后，需要在`build.gradle`文件中进行配置。这个过程其实很简单，就是粘贴复制一些东西，你是不需要知道这些文件的具体用处的。

  * 第一项：

    进入项目目录的`/android/app/build.gradle`文件，在`android{`这一行前面,加入如下代码：

    ```text
    def keystorePropertiesFile = rootProject.file("key.properties")
    def keystoreProperties = new Properties()
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
    ```

  * 第二项：

    把如下代码进行替换.`/android/app/build.gradle`文件

    ```text
    // 把如下代码进行替换
    buildTypes {
        release {
            signingConfig signingConfigs.debug
        }
    }
    
    // 替换成的代码：
    signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile file(keystoreProperties['storeFile'])
            storePassword keystoreProperties['storePassword']
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
        }
    }
    ```

    

* 配置网络访问

  [问题指导：[flutter 打包apk之后，安装在手机上无法访问网络](https://segmentfault.com/q/1010000018586277)](https://segmentfault.com/q/1010000018586277)

  * 配置修改一：`.....\android\app\src\profile\AndroidManifest.xml`

    ```xml
    <manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="com.example.flutter_app1">
        <!-- Flutter needs it to communicate with the running application
             to allow setting breakpoints, to provide hot reload, etc.
        -->
        <uses-permission android:name="android.permission.INTERNET"/>
        <!-- 增加如下代码配置 -->
        <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
        <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
        <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    </manifest>
    ```

  * 配置修改二： `......\android\app\src\main\AndroidManifest.xml`

    ```xml
    <manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="com.example.flutter_app1">
    
        <!-- io.flutter.app.FlutterApplication is an android.app.Application that
             calls FlutterMain.startInitialization(this); in its onCreate method.
             In most cases you can leave this as-is, but you if you want to provide
             additional functionality it is fine to subclass or reimplement
             FlutterApplication and put your custom class here. -->
        <application
            android:name="io.flutter.app.FlutterApplication"
            android:label="Flutter入门"
            android:icon="@mipmap/ic_launcher">
            <activity
                android:name=".MainActivity"
                android:launchMode="singleTop"
                android:theme="@style/LaunchTheme"
                android:configChanges="orientation|keyboardHidden|keyboard|screenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
                android:hardwareAccelerated="true"
                android:windowSoftInputMode="adjustResize">
                <!-- This keeps the window background of the activity showing
                     until Flutter renders its first frame. It can be removed if
                     there is no splash screen (such as the default splash screen
                     defined in @style/LaunchTheme). -->
                <meta-data
                    android:name="io.flutter.app.android.SplashScreenUntilFirstFrame"
                    android:value="true" />
                <intent-filter>
                    <action android:name="android.intent.action.MAIN"/>
                    <category android:name="android.intent.category.LAUNCHER"/>
                </intent-filter>
            </activity>
        </application>
        
        <!-- 增加如下代码配置 -->
        <uses-permission android:name="android.permission.INTERNET"/>
        <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
        <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
        <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    </manifest>
    ```

    

* 生成apk

  ```bash
  # 直接在终端中输入
  
  flutter build apk
  ```

  