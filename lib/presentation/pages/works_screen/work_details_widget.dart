import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/domain/entity/works_screen/works.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  widget.workItem.assetPath,
                  height: 300,
                ),
              ),
            ),
            Text(
              widget.workItem.projectName,
              style: context.textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
