import '/components/cards/card_dashboard/card_dashboard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'section_stats_widget.dart' show SectionStatsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionStatsModel extends FlutterFlowModel<SectionStatsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel1;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel2;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel3;
  // Model for card_dashboard component.
  late CardDashboardModel cardDashboardModel4;

  @override
  void initState(BuildContext context) {
    cardDashboardModel1 = createModel(context, () => CardDashboardModel());
    cardDashboardModel2 = createModel(context, () => CardDashboardModel());
    cardDashboardModel3 = createModel(context, () => CardDashboardModel());
    cardDashboardModel4 = createModel(context, () => CardDashboardModel());
  }

  @override
  void dispose() {
    cardDashboardModel1.dispose();
    cardDashboardModel2.dispose();
    cardDashboardModel3.dispose();
    cardDashboardModel4.dispose();
  }
}
