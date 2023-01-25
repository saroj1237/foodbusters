import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/category_search/category_search_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/widgets/category_card.dart';

class BBCategorySearchDelegate extends SearchDelegate {
  Timer? _debounce;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocBuilder<CategorySearchCubit, CategorySearchState>(
      builder: (context, state) {
        return state.maybeWhen(
          categorySearchLoading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          categorySearchError: (error) {
            return Center(child: Text(error));
          },
          categorySearchLoaded: (categories) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(AppPadding.p16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: AppSize.s10,
                mainAxisSpacing: AppSize.s10,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryCard(category: category);
              },
            );
          },
          orElse: () {
            return const Center(child: Text("Search category"));
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with query
      if (query.length < 2) return;
      context.read<CategorySearchCubit>().searchCategories(query);
    });
    return BlocBuilder<CategorySearchCubit, CategorySearchState>(
      builder: (context, state) {
        return state.maybeWhen(
          categorySearchLoading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          categorySearchError: (error) {
            return Center(child: Text(error));
          },
          categorySearchLoaded: (categories) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(AppPadding.p16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: AppSize.s10,
                mainAxisSpacing: AppSize.s10,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryCard(category: category);
              },
            );
          },
          orElse: () {
            return const Center(child: Text("Search category"));
          },
        );
      },
    );
  }
}
