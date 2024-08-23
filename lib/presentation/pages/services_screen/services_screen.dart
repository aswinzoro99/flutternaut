import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/widgets/custom_title_widget.dart';

import 'services_widget.dart';

@RoutePage()
class ServicesScreen extends BaseScreen {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends BaseState<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingXXXL),
      child: Column(
        children: [
          CustomTitleWidget(
            title: context.loc.mySpecialities,
            subTitle: context.loc.services,
          ),
          SizedBox(height: paddingLarge1),
          buildServicesList(),
        ],
      ),
    );
  }

  Column buildServicesList() {
    final children = <Widget>[];

    for (final serv in Config.servicesList) {
      children.add(
        ServicesWidget(
          serviceName: serv.service,
          description: serv.smallDescription,
          detailedDescription: serv.detailedDescription,
        ),
      );
    }

    return Column(children: children);
  }
}
