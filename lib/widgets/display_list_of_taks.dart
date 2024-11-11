import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/app/screens/home_screen.dart';
import 'package:todo_list_app/utils/extensions.dart';
import 'package:todo_list_app/widgets/common_container.dart';

import '../data/data.dart';

class DisplayListOfTask extends StatefulWidget {
  const DisplayListOfTask({super.key, required this.task, this.isCompletedTask = false});

  final List<Task> task;
  final bool isCompletedTask;

  @override
  State<DisplayListOfTask> createState() => _DisplayListOfTaskState();
}

class _DisplayListOfTaskState extends State<DisplayListOfTask> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height = widget.isCompletedTask ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTaskMessage = widget.isCompletedTask ? "There is no completed task yet" : "There is no task todo!";
    return CoomonContainer(
      height: height,
      child: widget.task.isEmpty ? 
      Center(
        child: Text(emptyTaskMessage, style: context.textTheme.headlineSmall),
      )
      : ListView.builder(
        shrinkWrap: true,
        itemCount: widget.task.length,
        padding: EdgeInsets.only(
          left: 16,
          top: 10,
          bottom: 10
        ),
        itemBuilder: (context, index) {
          final task = widget.task[index];
          return Row(
            children: [
              Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: task.category.color.withOpacity(0.3)
                ),
                child: Center(
                  child: Icon(task.category.icon, color: task.category.color,),
                ),
              ),
              Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(task.title),
                    Text(task.time)
                  ],
                )),
                Checkbox(
                  value: task.isCompleted, 
                  onChanged: (value){})
            ],
          );
        },
      ),
    );
  }
}
