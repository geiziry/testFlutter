import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:testFlutter/listtile.dart';

class PArentViewModel extends BaseViewModel {}

class ParentView extends ViewModelBuilderWidget<PArentViewModel> {
  @override
  Widget builder(BuildContext context, PArentViewModel model, Widget child) {
    return Material(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => ListTileView(),
      ),
    );
  }

  @override
  PArentViewModel viewModelBuilder(BuildContext context) {
    return PArentViewModel();
  }
}
