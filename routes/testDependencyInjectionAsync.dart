import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final value = await context.read<Future<String>>();
  return Response(body: value);
}
