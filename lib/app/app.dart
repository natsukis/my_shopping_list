import 'package:my_shopping_list/ui/views/auth/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LogInView),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Presolve(classType: SharedPreferences, presolveUsing: SharedPreferences.getInstance),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
