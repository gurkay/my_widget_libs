import '../models/model_component.dart';
import '../base/base.dart';
import '../data/data_model_component.dart';

class BaseInitialData extends Base {
  late List<int> _numberClickList;
  List<int> get getNumberClickList => _numberClickList;

  late List<ModelComponent> _modelComponent;
  List<ModelComponent> get getModelComponent => _modelComponent;

  void load() {
    setQhasdata(false);
    try {
      _numberClickList = [0, 0];
      setModelComponent(modelComponent);
      setQhasdata(true);
    } catch (e) {
      print('error::: ${e.toString()}');
      setQhasdata(true, false);
    }
  }

  void setNumberClickList(int value) {
    setNhasdata(false);
    try {
      switch (value) {
        case 0:
          _numberClickList[value] = _numberClickList[value] + 1;
          break;
        case 1:
          _numberClickList[value] = _numberClickList[value] + 1;
          break;
        default:
      }

      setNhasdata(true);
    } catch (e) {
      print('error::: ${e.toString()}');
      setNhasdata(true, false);
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
