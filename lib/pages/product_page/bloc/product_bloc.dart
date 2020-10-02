import 'dart:async';
import 'package:alget/pages/product_page/worker/category.dart';
import 'package:alget/pages/product_page/worker/worker.dart';
import 'package:alget/tools/my_dio.dart';
import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.g.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
    ProductBloc() : super(ProductState(
        categories: [],
    ));

    @override
    Stream<ProductState> mapEventToState(
      ProductEvent event,
    ) async* {
        if (event is ProductLoaded) {
            final Response viewCategoriesResponse = await dio.idealRequest(ViewCategoriesWorker(135));
            final CategoryResponse categoryResponse = CategoryResponse.fromJson(viewCategoriesResponse.data);

            yield state.copyWith(
                loading: true,
                categories: categoryResponse.entity.categories,
            );
        }
    }
}
