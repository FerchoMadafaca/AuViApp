import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'createAccount',
          path: '/createAccount',
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: 'createUser',
          path: '/createUser',
          builder: (context, params) => CreateUserWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'addCar',
          path: '/addCar',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AddCarWidget(),
          ),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomePage')
              : HomePageWidget(),
        ),
        FFRoute(
          name: 'carDrivingParked',
          path: '/carDrivingParked',
          asyncParams: {
            'carModel': getDoc(['Autos'], AutosRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CarDrivingParkedWidget(
              carModel: params.getParam('carModel', ParamType.Document),
            ),
          ),
        ),
        FFRoute(
          name: 'pastPayment',
          path: '/pastPayment',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PastPaymentWidget(),
          ),
        ),
        FFRoute(
          name: 'changePassword',
          path: '/changePassword',
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'paymentComplete',
          path: '/paymentComplete',
          builder: (context, params) => PaymentCompleteWidget(),
        ),
        FFRoute(
          name: 'Historial',
          path: '/historial',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Historial')
              : HistorialWidget(),
        ),
        FFRoute(
          name: 'ListaCarros',
          path: '/listaCarros',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'ListaCarros')
              : ListaCarrosWidget(),
        ),
        FFRoute(
          name: 'Logs',
          path: '/logs',
          asyncParams: {
            'iDTodo': getDoc(
                ['Registros_Servicios'], RegistrosServiciosRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LogsWidget(
              iDTodo: params.getParam('iDTodo', ParamType.Document),
            ),
          ),
        ),
        FFRoute(
          name: 'UpdateCar',
          path: '/updateCar',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: UpdateCarWidget(
              carId: params.getParam(
                  'carId', ParamType.DocumentReference, false, ['Autos']),
            ),
          ),
        ),
        FFRoute(
          name: 'Estadisticas',
          path: '/estadisticas',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EstadisticasWidget(),
          ),
        ),
        FFRoute(
          name: 'Calendario',
          path: '/calendario',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CalendarioWidget(),
          ),
        ),
        FFRoute(
          name: 'Emojis',
          path: '/emojis',
          builder: (context, params) => EmojisWidget(),
        ),
        FFRoute(
          name: 'CategoriaServicios',
          path: '/categoriaServicios',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'CategoriaServicios')
              : CategoriaServiciosWidget(),
        ),
        FFRoute(
          name: 'NuevoServicio2',
          path: '/nuevoServicio2',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NuevoServicio2Widget(),
          ),
        ),
        FFRoute(
          name: 'MetodosPago',
          path: '/metodosPago',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: MetodosPagoWidget(),
          ),
        ),
        FFRoute(
          name: 'CategoriasSocio',
          path: '/categoriasSocio',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CategoriasSocioWidget(),
          ),
        ),
        FFRoute(
          name: 'Paso1_Formulario',
          path: '/paso1Formulario',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Paso1FormularioWidget(),
          ),
        ),
        FFRoute(
          name: 'TerminosAutoLavado',
          path: '/terminosAutoLavado',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TerminosAutoLavadoWidget(),
          ),
        ),
        FFRoute(
          name: 'TerminosMecanico',
          path: '/terminosMecanico',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TerminosMecanicoWidget(),
          ),
        ),
        FFRoute(
          name: 'TerminosDesponchado',
          path: '/terminosDesponchado',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TerminosDesponchadoWidget(),
          ),
        ),
        FFRoute(
          name: 'TerminosGrua',
          path: '/terminosGrua',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TerminosGruaWidget(),
          ),
        ),
        FFRoute(
          name: 'maps',
          path: '/maps',
          builder: (context, params) => MapsWidget(),
        ),
        FFRoute(
          name: 'Paso2_Formulario',
          path: '/paso2Formulario',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Paso2FormularioWidget(),
          ),
        ),
        FFRoute(
          name: 'NuevoServicio1',
          path: '/nuevoServicio1',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NuevoServicio1Widget(),
          ),
        ),
        FFRoute(
          name: 'NuevoServicio3',
          path: '/nuevoServicio3',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NuevoServicio3Widget(),
          ),
        ),
        FFRoute(
          name: 'NuevoServicio4',
          path: '/nuevoServicio4',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NuevoServicio4Widget(),
          ),
        ),
        FFRoute(
          name: 'Paso3_Formulario',
          path: '/paso3Formulario',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Paso3FormularioWidget(),
          ),
        ),
        FFRoute(
          name: 'Cartera',
          path: '/cartera',
          builder: (context, params) => CarteraWidget(),
        ),
        FFRoute(
          name: 'TrabajosAbiertos',
          path: '/trabajosAbiertos',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TrabajosAbiertosWidget(),
          ),
        ),
        FFRoute(
          name: 'AceptarServicio',
          path: '/aceptarServicio',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AceptarServicioWidget(
              aIdRegistro: params.getParam('aIdRegistro',
                  ParamType.DocumentReference, false, ['Registros_Servicios']),
            ),
          ),
        ),
        FFRoute(
          name: 'OfertaEnviada',
          path: '/ofertaEnviada',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OfertaEnviadaWidget(),
          ),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'ListaPosiblesServicios',
          path: '/listaPosiblesServicios',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'ListaPosiblesServicios')
              : ListaPosiblesServiciosWidget(),
        ),
        FFRoute(
          name: 'DetallesOferta',
          path: '/detallesOferta',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: DetallesOfertaWidget(
              idoferta: params.getParam('idoferta', ParamType.DocumentReference,
                  false, ['LogsOfertas']),
              estatus: params.getParam('estatus', ParamType.String),
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Image.asset(
                    'assets/images/g2t7j_2.jpg',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
