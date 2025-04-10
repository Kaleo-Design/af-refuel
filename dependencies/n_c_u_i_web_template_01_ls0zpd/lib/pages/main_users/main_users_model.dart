import '/components/cards/card_dashboard/card_dashboard_widget.dart';
import '/components/lists/list_double_avatar_01/list_double_avatar01_widget.dart';
import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/components/weekly_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'main_users_widget.dart' show MainUsersWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainUsersModel extends FlutterFlowModel<MainUsersWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  // Model for nav_container component.
  late NavContainerModel navContainerModel;
  // Model for ui_title component.
  late UiTitleModel uiTitleModel1;
  // Model for ui_section_buttons_medium component.
  late UiSectionButtonsMediumModel uiSectionButtonsMediumModel1;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel1;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel2;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel3;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel4;
  // Model for weekly_card component.
  late WeeklyCardModel weeklyCardModel1;
  // Model for ui_title component.
  late UiTitleModel uiTitleModel2;
  // Model for user_info component.
  late UserInfoModel userInfoModel1;
  // Model for user_info component.
  late UserInfoModel userInfoModel2;
  // Model for user_info component.
  late UserInfoModel userInfoModel3;
  // Model for ui_title component.
  late UiTitleModel uiTitleModel3;
  // Model for ui_section_buttons_medium component.
  late UiSectionButtonsMediumModel uiSectionButtonsMediumModel2;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model1;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model2;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model3;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model4;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model5;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model6;
  // Model for list_double_avatar_01 component.
  late ListDoubleAvatar01Model listDoubleAvatar01Model7;
  // Model for weekly_card component.
  late WeeklyCardModel weeklyCardModel2;

  @override
  void initState(BuildContext context) {
    navContainerModel = createModel(context, () => NavContainerModel());
    uiTitleModel1 = createModel(context, () => UiTitleModel());
    uiSectionButtonsMediumModel1 =
        createModel(context, () => UiSectionButtonsMediumModel());
    cardDashboardModel1 = createModel(context, () => CardDashboardModel());
    cardDashboardModel2 = createModel(context, () => CardDashboardModel());
    cardDashboardModel3 = createModel(context, () => CardDashboardModel());
    cardDashboardModel4 = createModel(context, () => CardDashboardModel());
    weeklyCardModel1 = createModel(context, () => WeeklyCardModel());
    uiTitleModel2 = createModel(context, () => UiTitleModel());
    userInfoModel1 = createModel(context, () => UserInfoModel());
    userInfoModel2 = createModel(context, () => UserInfoModel());
    userInfoModel3 = createModel(context, () => UserInfoModel());
    uiTitleModel3 = createModel(context, () => UiTitleModel());
    uiSectionButtonsMediumModel2 =
        createModel(context, () => UiSectionButtonsMediumModel());
    listDoubleAvatar01Model1 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model2 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model3 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model4 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model5 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model6 =
        createModel(context, () => ListDoubleAvatar01Model());
    listDoubleAvatar01Model7 =
        createModel(context, () => ListDoubleAvatar01Model());
    weeklyCardModel2 = createModel(context, () => WeeklyCardModel());
  }

  @override
  void dispose() {
    navContainerModel.dispose();
    uiTitleModel1.dispose();
    uiSectionButtonsMediumModel1.dispose();
    cardDashboardModel1.dispose();
    cardDashboardModel2.dispose();
    cardDashboardModel3.dispose();
    cardDashboardModel4.dispose();
    weeklyCardModel1.dispose();
    uiTitleModel2.dispose();
    userInfoModel1.dispose();
    userInfoModel2.dispose();
    userInfoModel3.dispose();
    uiTitleModel3.dispose();
    uiSectionButtonsMediumModel2.dispose();
    listDoubleAvatar01Model1.dispose();
    listDoubleAvatar01Model2.dispose();
    listDoubleAvatar01Model3.dispose();
    listDoubleAvatar01Model4.dispose();
    listDoubleAvatar01Model5.dispose();
    listDoubleAvatar01Model6.dispose();
    listDoubleAvatar01Model7.dispose();
    weeklyCardModel2.dispose();
  }
}
