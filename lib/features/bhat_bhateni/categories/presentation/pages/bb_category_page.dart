import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/bb_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/pages/bb_category_searchdelegate.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/widgets/category_card.dart';
import 'package:go_router/go_router.dart';

class BBCategoryPage extends StatefulWidget {
  const BBCategoryPage({Key? key}) : super(key: key);

  @override
  State<BBCategoryPage> createState() => _BBCategoryPageState();
}

class _BBCategoryPageState extends State<BBCategoryPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //for pagination
  int pageIndex = 1;

  final _scrollController = ScrollController();

  bool hasReachedMax = false;
  UrlMeta? meta;

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      if (pageIndex <= meta!.pages!) {
        context.read<BbCategoryBloc>().add(GetBBCategoryNextPage(pageIndex));
        pageIndex += 1;
      } else {}
      setState(() {});
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: ColorManager.bbPrimary,
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
        elevation: AppSize.s0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorManager.white,
          ),
        ),
        title: Text(
          "Categories",
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: ColorManager.white,
              ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, AppSize.s60),
          child: Padding(
            padding: const EdgeInsets.only(
              right: AppPadding.p20,
              left: AppPadding.p20,
              top: AppPadding.p8,
              bottom: AppPadding.p16,
            ),
            child: Builder(builder: (context) {
              return TextField(
                readOnly: true,
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: BBCategorySearchDelegate(),
                  );
                },
                decoration: InputDecoration(
                  fillColor: ColorManager.white,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search for categories or items",
                  filled: true,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p12,
                    vertical: AppPadding.p16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    borderSide: BorderSide(
                        color: ColorManager.transparent, width: AppSize.s1_5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    borderSide: BorderSide(
                        color: ColorManager.lightGrey, width: AppSize.s1_5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    borderSide: BorderSide(
                        color: ColorManager.error, width: AppSize.s1_5),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppSize.s28),
            ),
          ),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: BlocBuilder<BbCategoryBloc, BbCategoryState>(
              builder: (context, state) {
                return state.maybeWhen(
                  successState: (data) {
                    meta = data.categoryPaginationDatacategories.meta;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSize.s16),
                        // category grid ----------------------
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: AppSize.s10,
                            mainAxisSpacing: AppSize.s10,
                          ),
                          itemCount: data.categoryPaginationDatacategories
                              .categories.length,
                          itemBuilder: (context, index) {
                            final category = data
                                .categoryPaginationDatacategories
                                .categories[index];
                            return CategoryCard(category: category);
                          },
                        ),
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
      ),
    );
  }
}
