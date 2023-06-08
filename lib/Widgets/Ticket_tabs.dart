import 'package:booktickets/utils/App_Layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A widget that displays two tabs for airline tickets and hotels.
class AppTicketTabs extends StatelessWidget {
  /// The label for the first tab.
  final String firsTab;

  /// The label for the second tab.
  final String secondTab;

  /// Creates a new instance of the [AppTicketTabs] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  ///   - firsTab: The label for the first tab.
  ///   - secondTab: The label for the second tab.
  const AppTicketTabs({Key? key, required this.firsTab, required this.secondTab}) : super(key: key);

  /// Builds the widget tree for the ticket tabs.
  ///
  /// This method is called by the Flutter framework to build the widget tree for the ticket tabs.
  ///
  /// Parameters:
  ///   - context: The build context for the ticket tabs.
  ///
  /// Returns:
  ///   A widget that represents the ticket tabs.
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                Airline tickets
                 */
            Container(
              width: AppLayout.getWidth(150),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                  color: Colors.white
              ),
              child: Center(child: Text(firsTab),),
            ),
            /*
                Hotels
                 */
            Container(
              width: AppLayout.getWidth(150),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                  color: Colors.grey.shade200
              ),
              child: Center(child: Text(secondTab),),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
            color: const Color(0xFFF4F6FD)
        ),
      ),
    );
  }
}
