part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class ProductLoaded extends ProductEvent {
    ProductLoaded({
        this.categories,
    });

    final List<Category> categories;
}
