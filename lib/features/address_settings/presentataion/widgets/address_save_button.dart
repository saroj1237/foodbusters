import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressSaveButton extends StatelessWidget {
  const AddressSaveButton({
    Key? key,
    required this.showAddButton,
    required this.activeAddress,
    required this.markerLatLng,
  }) : super(key: key);

  final ValueNotifier<bool> showAddButton;
  final ValueNotifier<String> activeAddress;
  final LatLng markerLatLng;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showAddButton,
      builder: (context, value, child) => SizedBox(
        height: AppSize.s50,
        width: double.infinity,
        child: value
            ? AppButton(
                label: "Save Address",
                onPressed: () {
                  context.read<AddressBloc>().add(
                        AddAddress(
                          address: Address(
                              name: activeAddress.value,
                              location: AddrLocation(
                                  latitude: markerLatLng.latitude,
                                  longitude: markerLatLng.longitude)),
                        ),
                      );
                },
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
