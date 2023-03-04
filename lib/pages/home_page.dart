import 'package:flutter/material.dart';
import 'package:flutter_badgeanimation/bloc/notif/notif_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge Animation with bloc'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                //const Icon(Icons.notifications),
                BlocBuilder<NotifBloc, NotifState>(
                  builder: (context, state) {
                    //if (state.notifCount == 0) return const SizedBox();
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                behavior: SnackBarBehavior.floating,
                                content: Text('Settings button clicked')));
                      },
                      child: badges.Badge(
                        // onTap: () {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //       const SnackBar(
                        //           behavior: SnackBarBehavior.floating,
                        //           content: Text('Settings button clicked')));
                        // },
                        showBadge: state.notifCount > 0 ? true : false,
                        badgeContent: Text(
                          state.notifCount > 99
                              ? ':D'
                              : state.notifCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: const Icon(
                          Icons.settings,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<NotifBloc>(context).add(NotifRemoveEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 8.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<NotifBloc>(context).add(NotifZeroEvent());
            },
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 8.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<NotifBloc>(context).add(NotifAddEvent());
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
