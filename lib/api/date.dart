import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class APICall {
  Dio dio = Dio();

  Future<DateTime> getDateTime() async {
    try {
      dio.interceptors.add(PrettyDioLogger());
      dio.options.headers['Accept'] = 'application/json';
      // dio.options.headers['ContentType'] = 'application/json';
      Response response =
          await dio.get('http://worldtimeapi.org/api/timezone/Asia/Riyadh');
      if (response.statusCode == 200) {
        DateTime dateTime = DateTime.parse(response.data!['datetime']);
        return dateTime;
        print(dateTime);
      }
    } catch (e) {
      print(e);
    }

    return DateTime.now();
  }
}
