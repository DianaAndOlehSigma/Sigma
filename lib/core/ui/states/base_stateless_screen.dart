import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';
import 'package:flutter/material.dart';


abstract class BaseStatelessScreen extends BaseStatelessWidget {
  BaseStatelessScreen({Key key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget getLayout(BuildContext context) {
    return SafeArea(
      child:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            key: scaffoldKey,
            resizeToAvoidBottomPadding: false,
            resizeToAvoidBottomInset: false,
            body: buildBody(context),
          ),
        ),
    );
  }


  /// should be overridden in extended widget
  Widget buildBody(BuildContext context);
}
