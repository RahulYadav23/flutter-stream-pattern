import 'dart:async';

mixin Validation {
  final emailvalidation = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains('@')) {
        sink.add(data);
      } else {
        sink.addError("Not a valid email");
      }
    },
  );

  final passwordvalidation = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length > 4) {
        sink.add(data);
      } else {
        sink.addError("Not a valid password");
      }
    },
  );
}
