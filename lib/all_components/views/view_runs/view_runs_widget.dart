import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/list_run_card/list_run_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'view_runs_model.dart';
export 'view_runs_model.dart';

class ViewRunsWidget extends StatefulWidget {
  const ViewRunsWidget({super.key});

  @override
  State<ViewRunsWidget> createState() => _ViewRunsWidgetState();
}

class _ViewRunsWidgetState extends State<ViewRunsWidget> {
  late ViewRunsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewRunsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final recentRuns =
            functions.getLast7Days(getCurrentTimestamp)?.toList() ?? [];

        return ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: recentRuns.length,
          separatorBuilder: (_, __) => SizedBox(height: 8.0),
          itemBuilder: (context, recentRunsIndex) {
            final recentRunsItem = recentRuns[recentRunsIndex];
            return ListRunCardWidget(
              key: Key('Key9xh_${recentRunsIndex}_of_${recentRuns.length}'),
              dateTime: recentRunsItem,
              pftScore: random_data.randomInteger(40, 60).toString(),
            );
          },
        );
      },
    );
  }
}
