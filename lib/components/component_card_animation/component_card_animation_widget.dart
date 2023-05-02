import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_card_animation_model.dart';
export 'component_card_animation_model.dart';

class ComponentCardAnimationWidget extends StatefulWidget {
  const ComponentCardAnimationWidget({
    Key? key,
    String? componentName,
  })  : this.componentName = componentName ?? 'Name',
        super(key: key);

  final String componentName;

  @override
  _ComponentCardAnimationWidgetState createState() =>
      _ComponentCardAnimationWidgetState();
}

class _ComponentCardAnimationWidgetState
    extends State<ComponentCardAnimationWidget> {
  late ComponentCardAnimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCardAnimationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                widget.componentName,
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
          Container(
            width: 90.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(
                _model.dropDownValue ??= 'None',
              ),
              options: ['None', 'Slide in', 'Fade in', 'Slide up'],
              onChanged: (val) => setState(() => _model.dropDownValue = val),
              width: 180.0,
              height: 50.0,
              searchHintTextStyle:
                  FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
              textStyle: FlutterFlowTheme.of(context).bodyMedium,
              hintText: 'Please select...',
              searchHintText: 'Search for an item...',
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 0.0,
              margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
            ),
          ),
        ],
      ),
    );
  }
}
