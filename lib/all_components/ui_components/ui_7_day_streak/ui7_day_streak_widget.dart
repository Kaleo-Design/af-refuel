import '/all_components/ui_components/ui_day_item/ui_day_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui7_day_streak_model.dart';
export 'ui7_day_streak_model.dart';

class Ui7DayStreakWidget extends StatefulWidget {
  const Ui7DayStreakWidget({super.key});

  @override
  State<Ui7DayStreakWidget> createState() => _Ui7DayStreakWidgetState();
}

class _Ui7DayStreakWidgetState extends State<Ui7DayStreakWidget> {
  late Ui7DayStreakModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Ui7DayStreakModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '7 Day Streak',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Figtree',
                letterSpacing: 0.0,
              ),
        ),
        Builder(
          builder: (context) {
            final currentWeek =
                functions.getCurrentWeek(getCurrentTimestamp)?.toList() ?? [];

            return Row(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(currentWeek.length, (currentWeekIndex) {
                final currentWeekItem = currentWeek[currentWeekIndex];
                return Expanded(
                  child: wrapWithModel(
                    model: _model.uiDayItemModels.getModel(
                      currentWeekIndex.toString(),
                      currentWeekIndex,
                    ),
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: UiDayItemWidget(
                      key: Key(
                        'Keyrry_${currentWeekIndex.toString()}',
                      ),
                      radius: 8.0,
                      size: 36.0,
                      opacity: () {
                        if (currentWeekIndex == 0) {
                          return 1.0;
                        } else if (currentWeekIndex == 1) {
                          return 1.0;
                        } else if (currentWeekIndex == 2) {
                          return .5;
                        } else {
                          return 0.3;
                        }
                      }(),
                    ),
                  ),
                );
              }).divide(SizedBox(width: 8.0)),
            );
          },
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
