// import 'package:flutter_map/flutter_map.dart';

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:foodbusters/core/helpers/random_number_generator.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/search_google_place/search_google_place_cubit.dart';
import 'package:foodbusters/features/address_settings/presentataion/widgets/address_save_button.dart';
import 'package:foodbusters/injection_container.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../domain/entities/address_entity.dart';

class MapPage extends StatefulWidget {
  const MapPage({
    Key? key,
    required this.position,
  }) : super(key: key);
  final Position position;
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late LatLng markerLatLng;

  Timer? _debounce;
  Marker? activeMarker;

  final TextEditingController _searchEditingController =
      TextEditingController();
  final Completer<GoogleMapController> _controller = Completer();
  final PanelController _panelContoller = PanelController();
  final ValueNotifier<bool> showClearIcon = ValueNotifier<bool>(false);
  final ValueNotifier<bool> showAddButton = ValueNotifier<bool>(false);
  final ValueNotifier<String> activeAddress = ValueNotifier<String>('');

  @override
  void initState() {
    super.initState();
    // reset the state of googl search place cubit
    context.read<SearchGooglePlaceCubit>().resetState();
    getActiveAddress(widget.position);
    markerLatLng = LatLng(widget.position.latitude, widget.position.longitude);
    // context.read<SearchGooglePlaceCubit>().stream.listen((state) {
    //   final isInitial = state is SearchGooglePlaceInitial;
    //   if (isInitial) {
    //     getActiveAddress(widget.position);
    //   }
    // });
    activeMarker = updateMarker(
        LatLng(widget.position.latitude, widget.position.longitude));
  }

  @override
  void dispose() {
    super.dispose();
    _searchEditingController.dispose();
    showClearIcon.dispose();
    showAddButton.dispose();
    activeAddress.dispose();
  }

  Future<void> getActiveAddress(Position position) async {
    final locationHelper = sl.get<LocationHelper>();
    final address = await locationHelper.getAddressFromLatLng(position);

    if (address != null) {
      activeAddress.value = address;
    } else {
      activeAddress.value = 'Can not get address';
    }

    print(address);
  }

  Marker updateMarker(LatLng latLng) {
    return Marker(
        markerId: MarkerId(
            "${randomNumberGenerator()}"), // a string for marker unique id
        icon:
            BitmapDescriptor.defaultMarker, // options for hues and custom imgs
        position: latLng, // lat and long doubles
        draggable: false,
        onDragStart: (latlng) {
          debugPrint(latlng.toString());
        },
        onDragEnd: (latlng) {
          debugPrint(latlng.toString());
        },
        onTap: () {
          //this is what you're looking for!
        });
  }

  void moveMap(CameraPosition cameraPosition) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(cameraPosition),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<AddressBloc, AddressState>(
        listener: (context, state) {
          state.maybeWhen(
            loading: () {},
            addAddressFailure: (error) {
              scaleDialog(context, title: "Error", body: error);
              context.read<AddressBloc>().add(const GetAddress());
            },
            addAddressSuccess: () {
              showSnackBar(
                context,
                message: "Address Added Successfully",
                bgColor: ColorManager.success,
                behavior: SnackBarBehavior.floating,
              );
              context.read<AddressBloc>().add(const GetAddress());
              context.pop();
            },
            orElse: () {
              debugPrint(state.toString());
            },
          );
        },
        child: Stack(
          children: [
            //------------------------------ google map ----------------------------------
            GoogleMap(
              onTap: (latlng) async {
                Position position = Position(
                  latitude: latlng.latitude,
                  longitude: latlng.longitude,
                  timestamp: null,
                  accuracy: 0.0,
                  altitude: 0.0,
                  heading: 0.0,
                  speed: 0.0,
                  floor: null,
                  isMocked: false,
                  speedAccuracy: 0.0,
                );

                getActiveAddress(position);
                setState(() {
                  activeMarker = updateMarker(latlng);
                  markerLatLng = latlng;
                });
                // moveMap(
                //   CameraPosition(
                //       target: LatLng(latlng.latitude, latlng.longitude),
                //       zoom: 14.4746),
                // );
                showAddButton.value = true;
              },
              markers: {activeMarker!},
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target:
                    LatLng(widget.position.latitude, widget.position.longitude),
                zoom: 16,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              // myLocationButtonEnabled: true,
              // myLocationEnabled: true,
              zoomGesturesEnabled: true,
              padding: const EdgeInsets.all(0),
              buildingsEnabled: true,
              cameraTargetBounds: CameraTargetBounds.unbounded,
              compassEnabled: true,
              indoorViewEnabled: false,
              mapToolbarEnabled: true,
              minMaxZoomPreference: MinMaxZoomPreference.unbounded,
              rotateGesturesEnabled: true,
              scrollGesturesEnabled: true,
              tiltGesturesEnabled: true,
              trafficEnabled: false,
            ),

            Positioned(
              right: AppSize.s20,
              bottom: MediaQuery.of(context).size.height * 0.32,
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s10)),
                child: IconButton(
                  icon: Icon(
                    Icons.my_location,
                    color: ColorManager.grey1,
                  ),
                  onPressed: () {
                    getActiveAddress(widget.position);
                    setState(() {
                      activeMarker = updateMarker(LatLng(
                          widget.position.latitude, widget.position.longitude));
                      markerLatLng = LatLng(
                          widget.position.latitude, widget.position.longitude);
                    });

                    moveMap(
                      CameraPosition(
                          target: LatLng(widget.position.latitude,
                              widget.position.longitude),
                          zoom: 16),
                    );
                  },
                ),
              ),
            ),
            //------------------------------ dragable section ------------------------------

            SlidingUpPanel(
              controller: _panelContoller,
              minHeight: size.height * 0.3,
              maxHeight: size.height,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppSize.s10)),
              onPanelSlide: (value) {
                debugPrint(value.toString());
              },
              panel: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16, vertical: AppPadding.p20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: AppSize.s5,
                          width: AppSize.s30,
                          decoration: BoxDecoration(
                              color: ColorManager.grey4,
                              borderRadius: BorderRadius.circular(AppSize.s10)),
                        ),
                      ),
                      const SizedBox(height: AppSize.s20),
                      // input text field
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p10),
                        decoration: BoxDecoration(
                            color: ColorManager.searchFieldColor,
                            borderRadius: BorderRadius.circular(AppSize.s10)),
                        height: AppSize.s50,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search, color: ColorManager.grey3),
                            const SizedBox(width: AppSize.s10),
                            Expanded(
                              child: TextFormField(
                                controller: _searchEditingController,

                                onTap: () {
                                  _panelContoller.animatePanelToPosition(
                                    1.0,
                                    duration: const Duration(milliseconds: 200),
                                  );
                                  showAddButton.value = false;
                                },
                                decoration: InputDecoration.collapsed(
                                  hintText: "Search location",
                                  hintStyle: GoogleFonts.lato(
                                      color: ColorManager.grey3, fontSize: 16),
                                ),
                                // onChanged: (value) {
                                //   if (value.isEmpty) {
                                //     showClearIcon.value = false;
                                //   } else {
                                //     showClearIcon.value = true;
                                //   }
                                //   context
                                //       .read<SearchGooglePlaceCubit>()
                                //       .searchGooglePlaceApi(value);
                                // },
                                onChanged: ((value) {
                                  activeAddress.value = "";
                                  context
                                      .read<SearchGooglePlaceCubit>()
                                      .searchGooglePlaceApi(value);
                                }),
                                onFieldSubmitted: (value) {
                                  context
                                      .read<SearchGooglePlaceCubit>()
                                      .searchGooglePlaceApi(value);
                                  print('Pressed via keypad');
                                },
                              ),
                            ),
                            ValueListenableBuilder<bool>(
                              valueListenable: showClearIcon,
                              builder: (context, value, child) {
                                return value
                                    ? IconButton(
                                        splashColor: ColorManager.transparent,
                                        onPressed: () {
                                          showClearIcon.value = false;
                                          _searchEditingController.clear();
                                        },
                                        icon: Icon(Icons.clear_rounded,
                                            color: ColorManager.grey3),
                                      )
                                    : const SizedBox.shrink();
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      ValueListenableBuilder<bool>(
                        valueListenable: showAddButton,
                        builder: (context, value, _) {
                          return !value
                              ? TextButton.icon(
                                  style: ButtonStyle(
                                    textStyle:
                                        MaterialStateProperty.all<TextStyle>(
                                      TextStyle(color: ColorManager.skyBlue),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<AddressBloc>().add(
                                          AddAddress(
                                            address: Address(
                                                location: AddrLocation(
                                                    latitude: widget
                                                        .position.latitude,
                                                    longitude: widget
                                                        .position.longitude),
                                                name: activeAddress.value),
                                          ),
                                        );
                                  },
                                  icon: Icon(
                                    Icons.my_location,
                                    color: ColorManager.skyBlue,
                                  ),
                                  label: customText(
                                      'Use my current location',
                                      ColorManager.skyBlue,
                                      16,
                                      FontWeight.w600),
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(height: AppSize.s10),
                      // SuggestedAddress(
                      //   activeAddress: activeAddress,
                      //   showAddButton: showAddButton,
                      //   panelContoller: _panelContoller,
                      //   mapController: _controller,
                      //   mounted: mounted,
                      // ),
                      BlocBuilder<SearchGooglePlaceCubit,
                          SearchGooglePlaceState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            googleSearchLoading: () {
                              return const CircularProgressIndicator();
                            },
                            googleSearchFailure: (error) {
                              return Text(error);
                            },
                            googleSearchLoaded: (suggestedAddresses) {
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: suggestedAddresses.length,
                                itemBuilder: (context, index) {
                                  final address = suggestedAddresses[index];
                                  print(address);
                                  return ListTile(
                                    onTap: () {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      context
                                          .read<SearchGooglePlaceCubit>()
                                          .resetState();
                                      showAddButton.value = true;
                                      activeAddress.value = address.address;

                                      const MyCustomClass().onAddressSelected(
                                        context,
                                        _panelContoller,
                                        _controller,
                                        (geometry) async {
                                          if (!mounted) return;
                                          setState(() {
                                            activeMarker =
                                                updateMarker(geometry);
                                            markerLatLng = geometry;
                                          });
                                        },
                                        address,
                                      );
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
                      ),

                      const SizedBox(height: AppSize.s10),
                      ValueListenableBuilder<String>(
                          valueListenable: activeAddress,
                          builder: (context, value, _) {
                            return Text(value);
                          }),
                      const SizedBox(height: AppSize.s10),

                      AddressSaveButton(
                          showAddButton: showAddButton,
                          activeAddress: activeAddress,
                          markerLatLng: markerLatLng)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCustomClass {
  const MyCustomClass();

  Future<void> onAddressSelected(
    BuildContext context,
    PanelController panelController,
    Completer<GoogleMapController> mapController,
    // VoidCallback onSuccess,
    Future<void> Function(LatLng latlng) onSuccess,
    SuggestedGoogleAddressModel? address,
  ) async {
    await panelController.close();
    final locationHelper = sl.get<LocationHelper>();
    final result =
        await locationHelper.getPlaceInfoFromPlaceId(address?.addressId ?? '');
    final geometry = LatLng(result['geometry']['location']['lat'],
        result['geometry']['location']['lng']);
    debugPrint(geometry.toString());
    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: geometry,
        zoom: 16,
      )),
    );
    await onSuccess(geometry);
  }
}
