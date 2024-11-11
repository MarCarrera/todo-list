import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/data/data.dart';
import 'package:todo_list_app/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/utils/task_categories.dart';
import 'package:todo_list_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(text: 'Aug 7, 2024', fontSize: 20, fontWeight: FontWeight.normal,),
                      Gap(10),
                      DisplayWhiteText(text: 'My Todo List', fontSize: 36, fontWeight: FontWeight.bold),
                    ],
                  ), 
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Gap(deviceSize.height * 0.18),
                        DisplayListOfTask(
                          task: [
                            Task(
                              id: 1, 
                              title: 'Title 1', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.education),
                            Task(
                              id: 1, 
                              title: 'Title 2', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.health),
                            Task(
                              id: 1, 
                              title: 'Title 3', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.home),
                            Task(
                              id: 1, 
                              title: 'Title 4', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.others),
                            Task(
                              id: 1, 
                              title: 'Title 5', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.personal),
                            Task(
                              id: 1, 
                              title: 'Title 6', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.shopping),
                            Task(
                              id: 1, 
                              title: 'Title 7', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.social),
                            Task(
                              id: 1, 
                              title: 'Title 8', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.travel),
                            Task(
                              id: 1, 
                              title: 'Title 9', 
                              note: 'Note', 
                              time: '10:12 am', 
                              date: 'Aug, 07', 
                              isCompleted: false, 
                              category: TaskCategory.work),
                          ]),
                         
                        
                        Gap(20),
                        Text('Completed', style: context.textTheme.headlineMedium,),
                        Gap(20),
                         DisplayListOfTask(
                          task: [], isCompletedTask: true,),
                        Gap(20),
                        ElevatedButton(
                          onPressed: (){} ,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(colors.primary), 
                          ), 
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DisplayWhiteText(text: 'Add New Task'),
                          ))
                      ],
                    ),
                  )
          )
        ],
      ),
    );
  }
}