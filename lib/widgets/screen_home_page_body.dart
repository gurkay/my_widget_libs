import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/mixin_list.dart';
import '../controllers/base_initial_data.dart';

class ScreenHomePageBody extends StatelessWidget with MixinList {
  @override
  Widget build(BuildContext context) {
    final _state = Provider.of<BaseInitialData>(context);
    return Container(
      child: getMixinList(
          context, _state.getModelComponent, _state.getNumberClickList),
    );
  }
}
