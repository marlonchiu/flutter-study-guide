import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  // 重构构造方法
  final Widget widget;
  CustomRoute(this.widget)
      : super(
            transitionDuration: const Duration(seconds: 1), // 动画过渡时间
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            transitionsBuilder: ( // 过渡效果
                BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
                // 动画效果一  渐隐渐现效果
                // return FadeTransition(
                //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                //       parent: animation1, curve: Curves.fastOutSlowIn // 设置动画效果
                //       )),
                //   child: child,
                // );

                // 动画效果二 缩放的动画效果
                // return ScaleTransition(
                //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                //     parent: animation1,
                //     curve: Curves.fastOutSlowIn
                //     )),
                //   child: child,
                // );

                // 动画效果三  旋转+缩放路由动画
                // return RotationTransition(
                //   turns: Tween(begin: 0.0,end: 1.0)
                //     .animate(CurvedAnimation(
                //       parent: animation1,
                //       curve: Curves.fastOutSlowIn
                //   )),
                //   child:ScaleTransition(
                //     scale: Tween(begin: 0.0, end: 1.0)
                //     .animate(CurvedAnimation(
                //       parent: animation1,
                //       curve: Curves.fastOutSlowIn
                //     )),
                //     child: child,
                //   )
                // );

                // 动画效果四  左右滑动路由动画(幻灯片路由动画)
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.0, 0.0),
                    end: Offset(0.0, 0.0)
                  ).animate(CurvedAnimation(
                    parent: animation1,
                    curve: Curves.decelerate  // fastOutSlowIn decelerate  elasticIn
                  )),
                  child: child,
                );
            });
}

/**
  FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
  animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）。
  curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
  transitionDuration：设置动画持续的时间，建议再1和2之间。
 */
