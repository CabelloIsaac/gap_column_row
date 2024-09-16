import 'package:flutter/widgets.dart';

/// A custom row widget that introduces a uniform horizontal gap between its children.
///
/// The `GapRow` allows for easy spacing between child widgets without manually adding
/// padding or margins. The gap is specified by the [gap] parameter.
///
/// The widget works similarly to Flutter's native [Row] widget but adds a
/// [SizedBox] of width [gap] between each child widget.
///
/// The [mainAxisAlignment], [crossAxisAlignment], and other properties function the same
/// as in a regular [Row].
///
/// Example usage:
/// ```dart
/// GapRow(
///   gap: 10.0,
///   children: [
///     Text('Item 1'),
///     Text('Item 2'),
///     Text('Item 3'),
///   ],
/// )
/// ```
/// This will display a row with a 10.0 pixel gap between each child.
class GapRow extends StatelessWidget {
  /// The horizontal gap to be added between each child widget.
  final double gap;

  /// How the children should be placed along the main axis (horizontal by default).
  final MainAxisAlignment mainAxisAlignment;

  /// How much space the row should take up along its main axis.
  final MainAxisSize mainAxisSize;

  /// How the children should be aligned in the cross axis (vertical by default).
  final CrossAxisAlignment crossAxisAlignment;

  /// The text direction to use for this row.
  final TextDirection? textDirection;

  /// The vertical order in which the children should be laid out.
  final VerticalDirection verticalDirection;

  /// The baseline alignment to use when aligning text-based children.
  final TextBaseline? textBaseline;

  /// The list of child widgets to display in the row.
  final List<Widget> children;

  /// Creates a [GapRow] widget.
  ///
  /// The [gap] is required and must be a non-negative double value. Other parameters
  /// behave like in a standard [Row].
  const GapRow({
    super.key,
    required this.gap,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    // Creates a list of children interspersed with SizedBoxes for spacing.
    List<Widget> spacedChildren = [];
    for (var i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i != children.length - 1) {
        spacedChildren.add(SizedBox(width: gap));
      }
    }

    // Returns a standard Row widget with the spaced children.
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: spacedChildren,
    );
  }
}
