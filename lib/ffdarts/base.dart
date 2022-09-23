import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({
    super.key, 
    required this.currenttime,
    required this.currentlocation,
  });

  final currenttime;
  final currentlocation;

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'FlutterRun',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Current Time',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.currenttime,
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Latitude',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.currentlocation.latitude.toString(),
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Longtitude',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.currentlocation.longitude.toString(),
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: ElevatedButton(
                      child: const Text('Button'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: ElevatedButton(
                      child: const Text('Button'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: ElevatedButton(
                      child: const Text('Button'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  
                ],
              ),
              /*
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseBottemButton(icontype: Icons.map, onPressed: (){
                    Navigator.pushNamed(context, '/mapchan');
                  }),
                  BaseBottemButton(icontype: Icons.grass, onPressed: (){
                    print("start!");
                  }),
                  BaseBottemButton(icontype: Icons.grass, onPressed: (){
                    Navigator.pushNamed(context, '/history');
                  }),
                ],
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}

class loctest extends StatefulWidget {
  const loctest({super.key});

  @override
  State<loctest> createState() => _currentlocationctestState();
}

class _currentlocationctestState extends State<loctest> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class BaseBottemButton extends StatelessWidget {
  const BaseBottemButton({
    super.key, 
    required this.icontype,
    required this.onPressed,
  });
  final IconData icontype;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(18, 18, 18, 18),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              fillColor:
                  FlutterFlowTheme.of(context).primaryColor,
              icon: Icon(
                icontype,                /////////////////////////
                color: FlutterFlowTheme.of(context)
                    .primaryBackground,
                size: 30,
              ),
              onPressed: (){
                onPressed();
              },
            ),
          ),
        ),
      ],
    );
  }
}