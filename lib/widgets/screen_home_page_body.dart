import 'package:flutter/material.dart';
import 'package:my_widget_libs/controllers/base_initial_data.dart';
import 'package:provider/provider.dart';
import '../classes/mixin_list.dart';

class ScreenHomePageBody extends StatelessWidget with MixinList {
  @override
  Widget build(BuildContext context) {
    final _state = Provider.of<BaseInitialData>(context);
    return Container(
      child: getMixinList(context, _state.getModelComponent),
    );
  }
}
