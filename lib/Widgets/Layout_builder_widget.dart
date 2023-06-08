import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A widget that builds a horizontal layout based on the available width.
class AppLayoutBuilderWidget extends StatelessWidget {
  /// Whether to display a colored background.
  final bool? isColor;

  /// The number of sections to divide the available width into.
  final int sections;

  /// Creates a new instance of the [AppLayoutBuilderWidget] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  ///   - isColor: Whether to display a colored background.
  ///   - sections: The number of sections to divide the available width into.
  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.sections}) : super(key: key);

  /// Builds the widget tree based on the available constraints.
  ///
  /// This method is called by the Flutter framework to build the widget tree based on the available constraints.
  ///
  /// Parameters:
  ///   - context: The build context for the layout builder.
  ///
  /// Returns:
  ///   A widget that represents the layout builder.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      builder: (BuildContext , BoxConstraints constraints ) {
        print("The width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) =>  SizedBox(
            width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
              color: isColor==null? Colors.white:Colors.grey.shade300
          ),),
          )),
        );
      },

    );
  }
}
