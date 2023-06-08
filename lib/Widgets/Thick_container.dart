import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A widget that displays a thick container with rounded corners and an optional colored border.
class ThickContainer extends StatelessWidget {
  /// Whether to display a colored border.
  final bool? isColor;

  /// Creates a new instance of the [ThickContainer] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  ///   - isColor: Whether to display a colored border.
  const ThickContainer({Key? key, this.isColor}) : super(key: key);

  /// Builds the widget tree for the thick container.
  ///
  /// This method is called by the Flutter framework to build the widget tree for the thick container.
  ///
  /// Parameters:
  ///   - context: The build context for the thick container.
  ///
  /// Returns:
  ///   A widget that represents the thick container.
  @override
  Widget build(BuildContext context) {
    return Container(
padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor==null? Colors.white:Color(0xFF8ACCF7))
      ),
    );
  }
}
