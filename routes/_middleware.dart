import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  // Dependency injection
  // return handler.use(requestLogger()).use(testMiddlewareAsync());
  // Automatically log all requests to our server
  return handler.use(requestLogger());

  // Middleware
  // return (context) async {
  //   // Execute code before request is handled.
  //   print("Middleware");
  //   // Forward the request to the respective handler.
  //   final response = await handler(context);

  //   // Execute code after request is handled.
  //   print(response.statusCode);
  //   // Return a response.
  //   return response;
  //     // return handler.use(requestLogger());

  // };
}

Middleware testMiddleware() {
  return provider<String>((context) => 'Welcome to Dart Frog!');
}

Middleware testMiddlewareAsync() {
  return provider<Future<String>>((context) async => 'Welcome to Dart Frog!');
}
