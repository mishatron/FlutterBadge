/// The [BadgePosition] class represents position of badge on icon
/// Has predefined positions for every angle
class BadgePosition {
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;

  const BadgePosition({this.top, this.right, this.bottom, this.left});

  factory BadgePosition.topLeft() {
    return const BadgePosition(top: -5, left: -10);
  }

  factory BadgePosition.topRight() {
    return const BadgePosition(top: -8, right: -10);
  }

  factory BadgePosition.bottomRight() {
    return const BadgePosition(bottom: -8, right: -10);
  }

  factory BadgePosition.bottomLeft() {
    return const BadgePosition(bottom: -8, left: -10);
  }
}
