import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/search/presentation/widgets/shimmer_loading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class AddressListPage extends StatefulWidget {
  const AddressListPage({Key? key}) : super(key: key);
  static Route? route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/shippingaddress'),
        builder: (_) => const AddressListPage());
  }

  @override
  AddressListPageState createState() => AddressListPageState();
}

class AddressListPageState extends State<AddressListPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<Position> getCurrentPosition() async {
    final currentPositionState =
        BlocProvider.of<CurrentPositionCubit>(context).state;
    if (currentPositionState is CurrentPositionLoaded) {
      return currentPositionState.currentPosition;
    } else {
      final position = await getCurrentPosition();
      return position;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Address")),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            BlocConsumer<AddressBloc, AddressState>(
              listener: (context, state) {
                state.maybeWhen(
                  getAddressFailure: (error) {
                    if (error.toLowerCase() == 'invalid token') {
                      context.read<AuthCubit>().logout();
                    }
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return const SearchLoadingWidget();
                  },
                  getAddressFailure: (error) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: SvgPicture.asset(ImageAsset.emptyItems)),
                        const SizedBox(
                          height: 16,
                        ),
                        customText(
                            error, ColorManager.textDark, 20, FontWeight.w800),
                      ],
                    );
                  },
                  getAddressSuccess: (list) {
                    return list.isNotEmpty
                        ? ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              final address = list[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                      address.name,
                                      ColorManager.textDark,
                                      16.0,
                                      FontWeight.w700),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: customText(
                                          "${address.location.latitude}°N, ${address.location.longitude}°E",
                                          ColorManager.textGrey,
                                          16.0,
                                          FontWeight.w400,
                                        ),
                                      ),
                                      PopupMenuButton(
                                        itemBuilder: (context) => [
                                          // PopupMenuItem(
                                          //   child: TextButton(
                                          //       onPressed: () {
                                          //         Navigator.of(context).pop();
                                          //         context.push(
                                          //             AppRoutes.mapPage,
                                          //             extra: Position(
                                          //                 latitude: address
                                          //                     .location.latitude
                                          //                     .toDouble(),
                                          //                 longitude: address
                                          //                     .location
                                          //                     .longitude
                                          //                     .toDouble(),
                                          //                 timestamp: null,
                                          //                 accuracy: 0.0,
                                          //                 altitude: 0.0,
                                          //                 heading: 0.0,
                                          //                 speed: 0,
                                          //                 speedAccuracy: 0.0));
                                          //       },
                                          //       child: const Text("Edit")),
                                          // ),
                                          PopupMenuItem(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                              context.read<AddressBloc>().add(
                                                  DeleteAddress(address.id));
                                            },
                                            child: Text(
                                              "Delete",
                                              style: TextStyle(
                                                  color: ColorManager.error),
                                            ),
                                          ),
                                        ],
                                        iconSize: 24,
                                      )
                                    ],
                                  )
                                ],
                              );
                            })
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child:
                                      SvgPicture.asset(ImageAsset.emptyItems)),
                              const SizedBox(
                                height: 16,
                              ),
                              customText("No items in cart",
                                  ColorManager.textDark, 20, FontWeight.w800),
                            ],
                          );
                  },
                  orElse: () {
                    return Container();
                  },
                );
              },
            ),
            const SizedBox(height: AppSize.s30),
            SizedBox(
              height: AppSize.s50,
              width: double.infinity,
              child: AppButton(
                label: "+ Add New Address",
                onPressed: () {
                  getCurrentPosition().then((currentPosition) {
                    context.push(AppRoutes.mapPage, extra: currentPosition);
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
