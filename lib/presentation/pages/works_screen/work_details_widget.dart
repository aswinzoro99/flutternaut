import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/domain/entity/works_screen/works.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../../../common/dimensions.dart';

@RoutePage()
class WorkDetailsScreen extends BaseScreen {
  final Work workItem;

  const WorkDetailsScreen({required this.workItem, super.key});

  @override
  State<WorkDetailsScreen> createState() => _WorkDetailsWidgetState();
}

@RoutePage()
class _WorkDetailsWidgetState extends State<WorkDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(hoverColor: Colors.transparent),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(paddingXXXL),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(widget.workItem.assetPath, height: 300),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(height: paddingMedium1),
                      Text(
                        widget.workItem.projectName,
                        style: context.textTheme.headlineLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 3,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.workItem.details,
                              style: context.textTheme.bodyLarge,
                              maxLines: 10,
                            ),
                          ),
                        ],
                      ),
                    ].animate(interval: 400.ms).fade(duration: 300.ms),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
