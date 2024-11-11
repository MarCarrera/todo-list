import 'package:flutter/material.dart';
import 'package:todo_list_app/utils/extensions.dart';

class CoomonContainer extends StatefulWidget {
  const CoomonContainer({super.key, required this.child, required this.height});

  final Widget child;
  final double height;

  @override
  State<CoomonContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CoomonContainer> {
  @override
  Widget build(BuildContext context) {
     final deviceSize = context.deviceSize;
    return Container(
                        width: deviceSize.width,
                        height: widget.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: context.colorScheme.primaryContainer,
                  
                        ),
                        child: widget.child );
  }
}