import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/update_bloc.dart';
import '../bloc/update_state.dart';

class Item_screen extends StatelessWidget {
  const Item_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UpdateBloc, UpdateState>(
        listener: (UpdateBloc,UpdateState){
          print(State);
        },
        builder: (context, state) {
      if (state is UpdateInitial) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                BlocProvider.of<UpdateBloc>(context)
                    .add(GetDataButtonPressed());
              },
              child: const Text('Get Activity')),
        );
      }else if (state is UpdateLoadingState) {
        return const Center(child: CircularProgressIndicator());
      }else if (state is UpdateFailState) {
        return Text(state.message);
      }else if (state is UpdateSuccessState) {
        return Container(
          child: Row(
            children: [
              //Image(image: NetworkImage(state.item.image)),
              SizedBox(width: 30,),
              Row(
                children: [
                  Text(state.item.name,
                  style: TextStyle(color: Colors.cyan),),
                  Text(state.item.price as String),
                ],
              ),
            ],
          ),
        );
      }
      return Container();


        },
      ),
      bottomNavigationBar: NavigationBar(
      backgroundColor: Colors.transparent,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home,color: Color(0xfffac585),),label: 'Home',),
        NavigationDestination(icon: Icon(Icons.history,color: Color(0xfffac585),),label: 'History',),
        NavigationDestination(icon: Icon(Icons.person,color: Color(0xfffac585),),label: 'Account',),
      ],
    ),
    );
  }
}
