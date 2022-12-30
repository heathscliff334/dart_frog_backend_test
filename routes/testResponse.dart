import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
  // final result = await _someFuture();
  // return Response.json(body: result);
}

Future<Response> _get(RequestContext context) async {
  final result = await _someFuture('GET');
  return Response.json(body: result);
}

Future<Response> _post(RequestContext context) async {
  final result = await _someFuture('POST');
  return Response.json(body: result);
}

Future<Map<String, dynamic>> _someFuture(String method) async {
  return <String, dynamic>{
    'isSuccess': true,
    'method': method,
    'hello': 'world!',
  };
}
