import 'package:alget/pages/product_page/bloc/product_bloc.dart';
import 'package:alget/views/loadable_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocProvider<ProductBloc>(
        create: (context) => ProductBloc(),
        child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) => Scaffold(
                appBar: AppBar(
                    title: Text('Products'),
                ),
                body: IdealLoadableBody(
                    loading: state.loading,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ButtonTheme(
                                height: 40,
                                child: FlatButton(
                                    onPressed: () {},
                                    child: Text(state.categories[index].name),
                                ),
                            ),
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(height: 36),
                    ),
                    onLoad: () => context.bloc<ProductBloc>().add(ProductLoaded()),
                ),
            ),
        ),
  );
}
