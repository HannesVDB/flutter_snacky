import 'package:flutter/material.dart';

enum SnackyLocation {
  top(
    alignment: AlignmentDirectional.topCenter,
    isTop: true,
  ),
  topStart(
    alignment: AlignmentDirectional.topStart,
    isTop: true,
  ),
  topEnd(
    alignment: AlignmentDirectional.topEnd,
    isTop: true,
  ),
  bottom(
    alignment: AlignmentDirectional.bottomCenter,
    isTop: false,
  ),
  bottomStart(
    alignment: AlignmentDirectional.bottomStart,
    isTop: false,
  ),
  bottomEnd(
    alignment: AlignmentDirectional.bottomEnd,
    isTop: false,
  ),
  aboveTabBar(
    alignment: AlignmentDirectional.bottomCenter,
    isTop: false,
    padding: EdgeInsetsDirectional.only(bottom: kBottomNavigationBarHeight),
  );

  final AlignmentDirectional alignment;

  final bool isTop;

  final EdgeInsetsDirectional padding;

  bool get isBottom => !isTop;

  const SnackyLocation({
    required this.alignment,
    required this.isTop,
    this.padding = EdgeInsetsDirectional.zero,
  });
}