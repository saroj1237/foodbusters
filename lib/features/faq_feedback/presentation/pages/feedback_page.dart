import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/faq_feedback/presentation/faq_bloc/faq_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _feedController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _feedController.addListener(() {
      if (_feedController.text.length > 6) {
        _activebutton.value = true;
      } else {
        _activebutton.value = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _activebutton.dispose();
    _feedController.dispose();
  }

  final ValueNotifier<bool> _activebutton = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback"),
      ),
      body: BlocListener<FAQBloc, FAQState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            feedbackLoading: () {
              showLoadingDialog(context);
            },
            addFeedbackFailure: (error) {
              Navigator.of(context).pop();
              scaleDialog(context, title: "Error", body: error);
            },
            addFeedbackSuccess: (message) {
              Navigator.of(context).pop();
              showSnackBar(
                context,
                message: message,
                behavior: SnackBarBehavior.floating,
                bgColor: ColorManager.success,
              );
              _feedController.clear();
              context.pop();
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  "Feedback", ColorManager.textDark, 24.0, FontWeight.w700),
              const SizedBox(height: AppSize.s20),
              Container(
                width: double.maxFinite,
                height: AppSize.s200,
                padding: const EdgeInsets.only(top: AppPadding.p10),
                decoration: BoxDecoration(
                    color: ColorManager.profileBg,
                    border: Border.all(
                      color: ColorManager.lightGrey1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.s10),
                    )),
                child: TextField(
                  controller: _feedController,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorManager.profileBg,
                      border: InputBorder.none,
                      hintText:
                          "Tell us what you love about the app, or what we could be doing better.",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.grey3,
                      )),
                ),
              ),
              const SizedBox(height: AppSize.s30),
              ValueListenableBuilder<bool>(
                valueListenable: _activebutton,
                builder: (context, value, child) {
                  return SizedBox(
                    height: AppSize.s50,
                    width: double.infinity,
                    child: AppButton(
                      label: "Submit feedback",
                      onPressed: _activebutton.value
                          ? () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              context
                                  .read<FAQBloc>()
                                  .add(AddFeedback(_feedController.text));
                            }
                          : null,
                      bgColor: _activebutton.value
                          ? null
                          : ColorManager.bbCategoryBg,
                      labelColor:
                          _activebutton.value ? null : ColorManager.grey1,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
