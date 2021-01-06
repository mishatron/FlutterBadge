library flutter_badge;

import 'package:flutter/material.dart';
import 'package:flutter_badged/badge_position.dart';
import 'package:flutter_badged/badge_positioned.dart';

/// [FlutterBadge] class is needed to show some information about count
class FlutterBadge extends StatefulWidget {
  final int itemCount;
  final Color badgeColor;
  final Color badgeTextColor;
  final Widget icon;
  final bool hideZeroCount;
  final TextStyle textStyle;
  final double textSize;
  final double borderRadius;
  final BadgePosition position;
  final EdgeInsets contentPadding;

  ///Constructor
  ///[key] is optional, default - true
  ///[itemCount],[icon] and [position] are required fields
  ///[hideZeroCount] is optional, default - true
  ///[badgeColor] is optional, default - red
  ///[badgeTextColor] is optional, default - white
  ///[borderRadius] is optional, default - 0.0
  ///[textStyle] is optional, default - null
  ///[textSize] is optional, default - 12.0
  ///[contentPadding] is optional, default - 5.0 for all sides
  FlutterBadge(
      {Key key,
      @required this.itemCount,
      @required this.icon,
      this.hideZeroCount: true,
      this.badgeColor = Colors.red,
      this.badgeTextColor: Colors.white,
      this.borderRadius = 0.0,
      this.position,
      this.textStyle,
      this.contentPadding = const EdgeInsets.all(5.0),
      this.textSize = 12.0})
      : assert(itemCount >= 0),
        assert(borderRadius != null),
        assert(badgeColor != null),
        assert(badgeTextColor != null),
        assert(contentPadding != null),
        assert(icon != null),
        assert(borderRadius != null),
        assert(textSize != null),
        super(key: key);

  @override
  FlutterBadgeState createState() {
    return FlutterBadgeState();
  }
}

class FlutterBadgeState extends State<FlutterBadge> {
  @override
  Widget build(BuildContext context) {
    if (widget.hideZeroCount && widget.itemCount == 0) {
      return widget.icon;
    }
    RoundedRectangleBorder border = widget.itemCount < 10
        ? null
        : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius));
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          widget.icon,
          BadgePositioned(
            position: widget.position ?? BadgePosition.topRight(),
            child: Material(
                type: widget.itemCount < 10
                    ? MaterialType.circle
                    : MaterialType.card,
                elevation: 2.0,
                shape: border,
                color: widget.badgeColor,
                child: Padding(
                  padding: widget.contentPadding,
                  child: Text(
                    widget.itemCount.toString(),
                    style: widget.textStyle ??
                        TextStyle(
                          fontSize: widget.textSize,
                          color: widget.badgeTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
