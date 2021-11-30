import 'dart:async';
import 'package:http/http.dart' as http;

class MultipartRequest extends http.MultipartRequest {
  /// Creates a new [MultipartRequest].
  MultipartRequest(
      String method,
      Uri url, {
        required this.onProgress,
      }) : super(method, url);

  final void Function(int bytes, int totalBytes) onProgress;
  int _total = 0;
  /// Freezes all mutable fields and returns a single-subscription [ByteStream]
  /// that will emit the request body.
  http.ByteStream finalize() {
    final byteStream = super.finalize();
    if (onProgress == null) return byteStream;

    int bytes = 0;
    _total += this.contentLength;
    final t = StreamTransformer.fromHandlers(
      handleData: (List<int> data, EventSink<List<int>> sink) {
        bytes += data.length;
        onProgress(bytes, _total);
        sink.add(data);
      },
    );
    final stream = byteStream.transform(t);
    return http.ByteStream(stream);
  }

  void addToTotal(int i){
    this._total += i;
  }
}