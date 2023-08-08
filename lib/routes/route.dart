import 'package:auto_route/auto_route.dart';

import '../admin/asset.dart';
import '../admin/contractor.dart';
import '../admin/pm_check.dart';
import '../admin/pm_meter_update.dart';
import '../criticality/asset_criticality.dart';
import '../criticality/system_criticality.dart';
import '../main.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // @override
  // RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/", page: HomeRoute.page, initial: true),
        // AutoRoute(path: "/test", page: MyTestPage),
        // AutoRoute(path: "/readbook", page: EpubPage),
        AutoRoute(path: "/asset", page: AssetRoute.page),
        AutoRoute(path: "/asset/criticality", page: AssetCriticalityRoute.page),
        AutoRoute(
            path: "/asset/system-criticality",
            page: SystemCriticalityRoute.page),
        AutoRoute(path: "/contractor", page: ContractorRoute.page),
        AutoRoute(path: "/pm/check", page: PmCheckRoute.page),
        AutoRoute(path: "/pm/update-meter", page: PmMeterUpdateRoute.page),
      ];
}
