import 'package:flutter/material.dart';

class TopAnimation extends StatelessWidget {

  Widget? child;
  Curve? curve;
  int second;
  int padding;

  TopAnimation(
    this.second,
    this.padding,
      {
    Key? key,
    required this.child,
    this.curve,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,  ///Revisar con el maestro
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: second),
      curve: curve ?? Curves.ease,
      builder: (BuildContext context, double value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * padding),
            child: this.child,
          ),
        );
      },
    );
  }
}


class BottomAnimation extends StatelessWidget {

  Widget? child;
  Curve? curve;
  int second;
  int padding;

  BottomAnimation(
      this.second,
      this.padding,
      {
        Key? key,
        required this.child,
        this.curve,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,  ///Revisar con el maestro
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: second),
      curve: curve ?? Curves.ease,
      builder: (BuildContext context, double value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * padding),
            child: this.child,
          ),
        );
      },
    );
  }
}


class LeftAnimation extends StatelessWidget {

  Widget? child;
  Curve? curve;
  int second;
  int padding;

  LeftAnimation(
      this.second,
      this.padding,
      {
        Key? key,
        required this.child,
        this.curve,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,  ///Revisar con el maestro
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: second),
      curve: curve ?? Curves.ease,
      builder: (BuildContext context, double value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * padding),
            child: this.child,
          ),
        );
      },
    );
  }
}


class RightAnimation extends StatelessWidget {

  Widget? child;
  Curve? curve;
  int second;
  int padding;

  RightAnimation(
      this.second,
      this.padding,
      {
        Key? key,
        required this.child,
        this.curve,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: child,  ///Revisar con el maestro
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: second),
      curve: curve ?? Curves.ease,
      builder: (BuildContext context, double value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * padding),
            child: this.child,
          ),
        );
      },
    );
  }
}