// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryPage(),
      );
    },
    DbSelectRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DbSelectPage(),
      );
    },
    LocationsRoute.name: (routeData) {
      final args = routeData.argsAs<LocationsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LocationsPage(
          key: args.key,
          name: args.name,
          id: args.id,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    LotsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LotsPage(),
      );
    },
    OperationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OperationsPage(),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductsPage(
          key: args.key,
          name: args.name,
          id: args.id,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterPage(key: args.key),
      );
    },
    ScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScannerPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ViewDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ViewDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ViewDetailsPage(
          args.id,
          args.name,
          args.sourceWarehouseId,
          args.destWarehouseId,
          args.createDate,
          args.createUid,
          args.datePlan,
          key: args.key,
        ),
      );
    },
    ViewPlansRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewPlansPage(),
      );
    },
  };
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DbSelectPage]
class DbSelectRoute extends PageRouteInfo<void> {
  const DbSelectRoute({List<PageRouteInfo>? children})
      : super(
          DbSelectRoute.name,
          initialChildren: children,
        );

  static const String name = 'DbSelectRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationsPage]
class LocationsRoute extends PageRouteInfo<LocationsRouteArgs> {
  LocationsRoute({
    Key? key,
    required String name,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          LocationsRoute.name,
          args: LocationsRouteArgs(
            key: key,
            name: name,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationsRoute';

  static const PageInfo<LocationsRouteArgs> page =
      PageInfo<LocationsRouteArgs>(name);
}

class LocationsRouteArgs {
  const LocationsRouteArgs({
    this.key,
    required this.name,
    required this.id,
  });

  final Key? key;

  final String name;

  final int id;

  @override
  String toString() {
    return 'LocationsRouteArgs{key: $key, name: $name, id: $id}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LotsPage]
class LotsRoute extends PageRouteInfo<void> {
  const LotsRoute({List<PageRouteInfo>? children})
      : super(
          LotsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LotsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OperationsPage]
class OperationsRoute extends PageRouteInfo<void> {
  const OperationsRoute({List<PageRouteInfo>? children})
      : super(
          OperationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductsPage]
class ProductsRoute extends PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    Key? key,
    required String name,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            key: key,
            name: name,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<ProductsRouteArgs> page =
      PageInfo<ProductsRouteArgs>(name);
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    required this.name,
    required this.id,
  });

  final Key? key;

  final String name;

  final int id;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, name: $name, id: $id}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
      : super(
          ScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScannerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewDetailsPage]
class ViewDetailsRoute extends PageRouteInfo<ViewDetailsRouteArgs> {
  ViewDetailsRoute({
    required int id,
    required String name,
    required String sourceWarehouseId,
    required String destWarehouseId,
    required String createDate,
    required String createUid,
    required String datePlan,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ViewDetailsRoute.name,
          args: ViewDetailsRouteArgs(
            id: id,
            name: name,
            sourceWarehouseId: sourceWarehouseId,
            destWarehouseId: destWarehouseId,
            createDate: createDate,
            createUid: createUid,
            datePlan: datePlan,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewDetailsRoute';

  static const PageInfo<ViewDetailsRouteArgs> page =
      PageInfo<ViewDetailsRouteArgs>(name);
}

class ViewDetailsRouteArgs {
  const ViewDetailsRouteArgs({
    required this.id,
    required this.name,
    required this.sourceWarehouseId,
    required this.destWarehouseId,
    required this.createDate,
    required this.createUid,
    required this.datePlan,
    this.key,
  });

  final int id;

  final String name;

  final String sourceWarehouseId;

  final String destWarehouseId;

  final String createDate;

  final String createUid;

  final String datePlan;

  final Key? key;

  @override
  String toString() {
    return 'ViewDetailsRouteArgs{id: $id, name: $name, sourceWarehouseId: $sourceWarehouseId, destWarehouseId: $destWarehouseId, createDate: $createDate, createUid: $createUid, datePlan: $datePlan, key: $key}';
  }
}

/// generated route for
/// [ViewPlansPage]
class ViewPlansRoute extends PageRouteInfo<void> {
  const ViewPlansRoute({List<PageRouteInfo>? children})
      : super(
          ViewPlansRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewPlansRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
