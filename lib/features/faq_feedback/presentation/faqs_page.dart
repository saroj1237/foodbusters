import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/faq_feedback/presentation/faq_bloc/faq_bloc.dart';

class FAQsPage extends StatefulWidget {
  const FAQsPage({Key? key}) : super(key: key);

  @override
  State<FAQsPage> createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  @override
  void initState() {
    super.initState();
    context.read<FAQBloc>().add(const GetFaq());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQ"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: BlocBuilder<FAQBloc, FAQState>(builder: (context, state) {
          return state.maybeWhen(faqLoading: () {
            return const Center(child: CircularProgressIndicator());
          }, faqLoaded: (data) {
            if (data.isEmpty) {
              return Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Icon(
                    Icons.sticky_note_2_outlined,
                    size: 58,
                    color: ColorManager.grey2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customText("No results found", ColorManager.grey1, 20,
                      FontWeight.w800),
                ],
              );
            } else {
              return SizedBox(
                // color: Colors.black,

                width: double.infinity,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        margin: const EdgeInsets.only(bottom: AppMargin.m16),
                        decoration: BoxDecoration(
                            color: ColorManager.profileBg,
                            borderRadius: BorderRadius.circular(10)),
                        child: Theme(
                          data: theme,
                          child: ExpansionTile(
                            expandedAlignment: Alignment.centerLeft,
                            iconColor: ColorManager.primary,
                            title: customText(data[index].question,
                                ColorManager.textDark, 16, FontWeight.w700),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16, bottom: 16),
                                child: customText(data[index].answer,
                                    ColorManager.textDark, 14, FontWeight.w500),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              );
            }
          }, orElse: () {
            return const SizedBox.shrink();
          });
        }),
      ),
    );
  }
}
