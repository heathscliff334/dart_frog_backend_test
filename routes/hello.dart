import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  inspect(request);
  print(request.url.toString());
  return Response(body: 'hello world (kevin) $request');
}
