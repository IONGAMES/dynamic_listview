import 'package:dynamic_listview/blocs/cubit/dynamic_list_cubit.dart';
import 'package:dynamic_listview/presentation/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<DynamicListCubit>(context).generateList();
          },
          child: Icon(Icons.add_rounded),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<DynamicListCubit, DynamicListState>(
              builder: (context, state) {
                return Container(
                  height: 75,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.numbers.length,
                    itemBuilder: (itemBuilder, index) {
                      return ListItem(number: state.numbers[index]);
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<DynamicListCubit>(context).removeLastElement();
                  },
                  child: Icon(Icons.exposure_minus_1_rounded),
                ),
                SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<DynamicListCubit>(context).addElement();
                  },
                  child: Icon(Icons.exposure_plus_1_rounded),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
