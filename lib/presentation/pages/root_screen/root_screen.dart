import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/enum/navbar_type.dart';
import 'package:flutternaut_frontend_webapp/enum/socials.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/bloc/contacts/contacts_bloc.dart';
import 'package:flutternaut_frontend_webapp/presentation/bloc/root/root_bloc.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/about_screen/about_screen.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/works_screen/works_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';
import 'package:universal_html/html.dart' as html;

import '../../../utils/locator.dart';
import '../contacts_screen/contacts_screen.dart';
import '../home_screen/home_screen.dart';
import '../services_screen/services_screen.dart';

@RoutePage()
class RootScreen extends BaseScreen implements AutoRouteWrapper {
  const RootScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RootScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: locate<RootBloc>()),
        BlocProvider.value(value: locate<ContactsBloc>()),
      ],
      child: this,
    );
  }
}

class _RootScreenState extends BaseState<RootScreen> {
  late final RootBloc bloc;

  final socialList = Socials.values;

  @override
  void initState() {
    bloc = locate<RootBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < Config.responsiveTriggerWidth) {
        return Center(
          child: Text(context.loc.responsiveWindowMessage),
        );
      } else {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Row(
            children: [
              BlocBuilder<RootBloc, RootState>(
                buildWhen: (previous, current) =>
                    previous.selectedItem != current.selectedItem,
                builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(paddingLarge1),
                    decoration: const BoxDecoration(color: secondaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.homeScreenTitle,
                          style: context.textTheme.headlineSmall,
                        ),
                        const Spacer(),
                        getNavigationRailItem(
                          title: context.loc.home,
                          item: NavbarType.home,
                          isSelected: state.selectedItem == NavbarType.home,
                        ),
                        getNavigationRailItem(
                          title: context.loc.about,
                          item: NavbarType.about,
                          isSelected: state.selectedItem == NavbarType.about,
                        ),
                        getNavigationRailItem(
                          title: context.loc.services,
                          item: NavbarType.services,
                          isSelected: state.selectedItem == NavbarType.services,
                        ),
                        getNavigationRailItem(
                          title: context.loc.works,
                          item: NavbarType.works,
                          isSelected: state.selectedItem == NavbarType.works,
                        ),
                        getNavigationRailItem(
                          title: context.loc.blogs,
                          item: NavbarType.blogs,
                          isSelected: state.selectedItem == NavbarType.blogs,
                        ),
                        getNavigationRailItem(
                          title: context.loc.contact,
                          item: NavbarType.contacts,
                          isSelected: state.selectedItem == NavbarType.contacts,
                        ),
                        const Spacer(),
                        buildTrailing(),
                      ],
                    ),
                  );
                },
              ),
              buildBody(),
            ],
          ),
        );
      }
    });
  }

  Widget buildBody() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<RootBloc, RootState>(
              buildWhen: (previous, current) =>
                  previous.selectedItem != current.selectedItem,
              builder: (context, state) {
                switch (state.selectedItem) {
                  case NavbarType.home:
                    return const HomeScreen();
                  case NavbarType.about:
                    return const AboutScreen();
                  case NavbarType.services:
                    return const ServicesScreen();
                  case NavbarType.works:
                    return const WorksScreen();
                  case NavbarType.blogs:
                    return Center(
                      child: Text(
                        context.loc.underDevelopment,
                        style: context.textTheme.bodyLarge,
                      ),
                    );
                  case NavbarType.contacts:
                    return const ContactsScreen();
                }
              },
            ),
          ),
          buildFooter(),
        ],
      ),
    );
  }

  InkWell getNavigationRailItem({
    required String title,
    required NavbarType item,
    bool? isSelected,
  }) {
    return InkWell(
      onTap: () => bloc.add(OnNavigationBarItemChanged(item)),
      child: Padding(
        padding: EdgeInsets.only(
          top: paddingRegular1,
          bottom: paddingRegular1,
          right: paddingXXXL,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isSelected ?? false)
              Container(
                color: Colors.amber,
                height: dp2,
                // TODO(Aswin): Remove hard coded values
                width: dp50,
              ),
            Text(
              title,
              style: (isSelected ?? false)
                  ? context.textTheme.labelLarge
                  : context.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrailing() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSocial(Socials.instagram),
        buildSocial(Socials.github),
        buildSocial(Socials.linkedIn),
        SizedBox(height: bodyPadding),
        Text(
          context.loc.copyrightDesc,
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }

  InkWell buildSocial(Socials item) {
    // TODO(Aswin): Add splash effect
    return InkWell(
      onTap: () {
        html.window.open(item.redirectionUrl, "blank");
      },
      child: Tooltip(
        message: item.name,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: paddingSmall1),
          child: Container(
            padding: EdgeInsets.all(paddingSmaller2),
            decoration: const BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: buildIcon(item.assetValue, secondaryColor),
          ),
        ),
      ),
    );
  }

  Image buildIcon(String asset, Color? color) {
    return Image.asset(asset, color: color, height: iconSizeRegular);
  }

  Padding buildFooterIcons(String asset) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingSmall1),
      child: Container(
        padding: EdgeInsets.all(paddingSmaller2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black26, width: 0.5),
        ),
        child: buildIcon(asset, Colors.black87),
      ),
    );
  }

  Padding buildFooter() {
    return Padding(
      padding: EdgeInsets.only(right: paddingLarge1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildFooterIcons(Assets.instagram),
          buildFooterIcons(Assets.github),
          buildFooterIcons(Assets.linkedIn),
          SizedBox(height: bodyPadding),
          Container(
            width: dp2,
            color: Colors.black38,
            height: dp150,
          )
        ],
      ),
    );
  }
}
