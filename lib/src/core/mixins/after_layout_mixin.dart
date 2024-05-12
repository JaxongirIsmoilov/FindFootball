import 'package:flutter/widgets.dart';

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T>{
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => afterFirstLayout(context));
    super.initState();
  }
  void afterFirstLayout(BuildContext context);
}