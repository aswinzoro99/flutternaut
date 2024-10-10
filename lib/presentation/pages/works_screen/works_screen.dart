import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';
import 'package:universal_html/html.dart' as html;

import '../../../common/config.dart';
import '../../../common/dimensions.dart';
import '../widgets/custom_button_with_icon.dart';
import '../widgets/custom_title_widget.dart';

@RoutePage()
class WorksScreen extends BaseScreen {
  const WorksScreen({super.key});

  @override
  State<WorksScreen> createState() => _WorksScreenState();
}

class _WorksScreenState extends BaseState<WorksScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: EdgeInsets.all(paddingXXXL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTitleWidget(
                  title: context.loc.recentProject,
                  subTitle: context.loc.work,
                ),
                SizedBox(height: paddingXXXL),
                Expanded(
                  child: GridView.builder(
                    itemCount: Config.workList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.3,
                      mainAxisSpacing: paddingMedium1,
                      crossAxisSpacing: paddingXL,
                    ),
                    itemBuilder: buildGridViewItem,
                  ),
                ),
                SizedBox(height: paddingMedium1),
                CustomButtonWithIcon(
                  onPressed: () {},
                  text: context.loc.loadMore,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  InkWell buildGridViewItem(BuildContext context, int index) {
    final work = Config.workList[index];

    return InkWell(
      onTap: () {
        html.window.open(
          work.projectUrl,
          "blank",
        );
      },
      child: Padding(
        padding: EdgeInsets.all(bodyPadding),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    work.minorDescription,
                    style: context.textTheme.bodySmall,
                  ),
                  SizedBox(height: paddingMedium1),
                  Text(
                    work.projectName,
                    style: context.textTheme.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                    maxLines: 3,
                  ),
                  const Spacer(),
                  Image.asset(
                    Assets.northEastClear,
                    height: iconSizeXXL,
                  ),
                ],
              ),
            ),
            Image.asset(work.assetPath, height: 190),
          ],
        ),
      ),
    );
  }
}
