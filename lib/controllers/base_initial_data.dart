import '../models/model_component.dart';
import '../base/base.dart';
import '../data/data_model_component.dart';

class BaseInitialData extends Base {
  late List<ModelComponent> _modelComponent;
  List<ModelComponent> get getModelComponent => _modelComponent;

  void load() {
    setQhasdata(false);
    try {
      _modelComponent = [];
      setModelComponent(modelComponent);
      setQhasdata(true);
    } catch (e) {
      print('error::: ${e.toString()}');
      setQhasdata(true, false);
    }
  }

  void setModelComponent(List<ModelComponent> mComponent) {
    setNhasdata(false);
    try {
      _modelComponent = mComponent;
      setNhasdata(true);
    } catch (e) {
      print('error::: ${e.toString()}');
      setNhasdata(true, false);
    }
  }
}
