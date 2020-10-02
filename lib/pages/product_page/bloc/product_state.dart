part of 'product_bloc.dart';

@immutable
@CopyWith()
class ProductState {
    ProductState({
        this.loading = true,
        this.categories,
    });

    final bool loading;
    final List<Category> categories;
}
