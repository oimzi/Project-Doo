import 'package:flutter_doo_test/app/locator.dart';
import 'package:flutter_doo_test/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'doo_list_viewmodel.dart';

class HomeViewModel extends BaseViewModel {

  DooListViewModel dooListViewModel;

  final NavigationService _navigationService = locator<NavigationService>();

  HomeViewModel() {
    dooListViewModel = DooListViewModel();
  }

  Future goCreateView() async {
    await _navigationService.navigateTo(Routes.createViewRoute);
  }

}