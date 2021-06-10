import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';
import 'package:flutter/material.dart';


abstract class BaseStatelessScreen extends BaseStatelessWidget {
  BaseStatelessScreen({Key key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(context),
        body: buildBody(context),
      ),
    );
  }

  /// should be overridden in extended widget
  Widget buildAppbar(BuildContext context);

  /// should be overridden in extended widget
  Widget buildBody(BuildContext context);
}
