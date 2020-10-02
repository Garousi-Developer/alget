import 'package:alget/tools/my_dio.dart';

class ViewCategoriesWorker extends IdealRequest {
    ViewCategoriesWorker(int storeId) : super(
        method: 'GET',
        path: 'store/$storeId',
    );
}