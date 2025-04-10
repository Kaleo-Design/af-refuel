import '/assessment_prototype/jml/jml_item_render/jml_item_render_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'jml_group_render_model.dart';
export 'jml_group_render_model.dart';

class JmlGroupRenderWidget extends StatefulWidget {
  const JmlGroupRenderWidget({
    super.key,
    required this.jmlItems,
  });

  final List<JmlWrapperStruct>? jmlItems;

  @override
  State<JmlGroupRenderWidget> createState() => _JmlGroupRenderWidgetState();
}

class _JmlGroupRenderWidgetState extends State<JmlGroupRenderWidget> {
  late JmlGroupRenderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JmlGroupRenderModel());

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
        final jmlRenderItems = widget.jmlItems!.toList();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(jmlRenderItems.length, (jmlRenderItemsIndex) {
            final jmlRenderItemsItem = jmlRenderItems[jmlRenderItemsIndex];
            return JmlItemRenderWidget(
              key: Key(
                  'Key2fe_${jmlRenderItemsIndex}_of_${jmlRenderItems.length}'),
              renderType: jmlRenderItemsItem,
            );
          }).divide(SizedBox(height: 8.0)),
        );
      },
    );
  }
}
