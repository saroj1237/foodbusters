import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../bloc/search_google_place/search_google_place_cubit.dart';

class SuggestedAddress extends StatelessWidget {
  const SuggestedAddress({
    Key? key,
    required this.activeAddress,
    required this.showAddButton,
    required PanelController panelContoller,
    required this.mapController,
    required this.mounted,
  })  : _panelContoller = panelContoller,
        super(key: key);

  final ValueNotifier<String> activeAddress;
  final ValueNotifier<bool> showAddButton;
  final PanelController _panelContoller;
  final Completer<GoogleMapController> mapController;
  final bool mounted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchGooglePlaceCubit, SearchGooglePlaceState>(
      builder: (context, state) {
        return state.maybeWhen(
          googleSearchLoading: () {
            return const CircularProgressIndicator();
          },
          googleSearchFailure: (error) {
            return Text(error);
          },
          googleSearchLoaded: (suggestedAddresses) {
            activeAddress.value = '';
            return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: suggestedAddresses.length,
              itemBuilder: (context, index) {
                final address = suggestedAddresses[index];

                return ListTile(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();

                    context.read<SearchGooglePlaceCubit>().resetState();
                    showAddButton.value = true;

                    activeAddress.value = address.address;

                    // const MyCustomClass().onAddressSelected(
                    //   context,
                    //   _panelContoller,
                    //   mapController,
                    //   () {
                    //     if (!mounted) return;
                    //     context.read<SearchGooglePlaceCubit>().resetState();
                    //   },
                    //   address,
                    // );
                  },
                  leading: const Icon(Icons.location_on),
                  title: Text(address.address),
                );
              },
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
