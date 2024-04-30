import 'package:go_router/go_router.dart';

void customNavigate(context, String path, {Object? extra}) {
  GoRouter.of(context).push(path, extra: extra,);
}

void custompopNavigate(context) {
  GoRouter.of(context).pop();
}

void customReplacementNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
