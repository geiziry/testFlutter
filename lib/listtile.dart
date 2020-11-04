import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testFlutter/parent.dart';

class ListTileViewModel extends BaseViewModel {
  void accessParent(BuildContext context) {
    try {
      getParentViewModel<PArentViewModel>(context);
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}

class ListTileView extends ViewModelBuilderWidget<ListTileViewModel> {
  @override
  Widget builder(BuildContext context, ListTileViewModel model, Widget child) {
    return ListTile(
      title: Text('list tile'),
      trailing: IconButton(
          icon: Icon(Icons.accessibility),
          onPressed: () => model.accessParent(context)),
    );
  }

  @override
  ListTileViewModel viewModelBuilder(BuildContext context) {
    return ListTileViewModel();
  }
}
