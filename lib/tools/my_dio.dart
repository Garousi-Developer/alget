library ideal_dio;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import 'package:live_cams/enterprise/tools/constants.dart';

final Dio dio = Dio(
    BaseOptions(
        baseUrl: 'https://dev.alget.nl',
    ),
);

class IdealRequest {
    IdealRequest({
        @required this.method,
        @required this.path,
        this.queryParameters,
        this.data,
    });

    final String method;
    final String path;
    final Map<String, dynamic> queryParameters;
    final dynamic data;
}

extension ResponseDecoding on Dio {
    Future<Response<T>> idealRequest<T>(IdealRequest idealRequest) async {
        return request(
            idealRequest.path,
            queryParameters: idealRequest.queryParameters,
            data: idealRequest.data,
            options: Options(
                method: idealRequest.method,
            ),
        );
    }
}