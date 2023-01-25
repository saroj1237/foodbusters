import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/bag/presentation/widgets/bag_item.dart';
import 'package:foodbusters/features/bag/presentation/widgets/bag_page_appbar.dart';

class BagPage extends StatefulWidget {
  const BagPage({Key? key}) : super(key: key);

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  void initState() {
    context.read<BagBloc>().add(const GetBagItems());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: BagPageAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<BagBloc>().add(const GetBagItems());
          },
          child: BlocBuilder<BagBloc, BagState>(
            builder: (context, state) {
              return state.maybeWhen(
                bagLoading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                getBagItemsFailure: () {
                  return const Center(
                    child: Text("Error occured"),
                  );
                },
                getBagItemsSuccess: (list, activeItem) {
                  return list.isNotEmpty
                      ? ListView.separated(
                          itemCount: list.length,
                          shrinkWrap: false,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: AppSize.s16),
                          itemBuilder: (context, index) {
                            final bagItem = list[index];
                            return BagItemWidget(
                              bagItem: bagItem,
                            );
                          },
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: SvgPicture.asset(ImageAsset.emptyItems)),
                            const SizedBox(
                              height: 16,
                            ),
                            customText("No items in cart",
                                ColorManager.textDark, 20, FontWeight.w800),
                          ],
                        );
                },
                orElse: () {
                  return const SizedBox.shrink();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
