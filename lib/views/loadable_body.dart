import 'package:alget/views/circular_progress.dart';
import 'package:flutter/material.dart';


class IdealLoadableBody extends StatelessWidget {
    IdealLoadableBody({
        @required this.loading,
        @required this.child,
        @required this.onLoad,
        this.onDisplay,
    });

    final bool loading;
    final Widget child;
    final void Function() onLoad;
    final void Function() onDisplay;

    @override
    Widget build(BuildContext context) {
        if (loading) {
            onLoad();
            
            return Center(
                child: IdealCircularProgressIndicator(),
            );
        }
        else {
            if (onDisplay != null) {
                onDisplay();
            }
            
            return child;
        }
    }
}