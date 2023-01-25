import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/image_picker.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/home/presentation/widgets/custom_button.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key, required this.userModel}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
  final UserModel userModel;
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  void initState() {
    _fullNameController.text = widget.userModel.fullName ?? '';
    _emailController.text = widget.userModel.email ?? '';
    _phoneController.text = widget.userModel.phone ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
      ),
      body: SingleChildScrollView(
        child: WillPopScope(
          onWillPop: () async {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            return true;
          },
          child: BlocListener<ProfileBloc, ProfileState>(
            listener: (context, state) {
              state.maybeWhen(
                updateProfileLoading: () {
                  showLoadingDialog(context);
                },
                updateProfileFailure: (error) {
                  Navigator.of(context).pop();
                  showSnackBar(context, message: error);
                  context.read<ProfileBloc>().add(const GetProfileInfo());
                },
                updateProfileSuccess: (user) {
                  Navigator.of(context).pop();
                  showSnackBar(context,
                      message: "Profile updated successfully.");
                },
                orElse: () {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p40),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: const Icon(Icons.photo),
                                    title: const Text('Gallery'),
                                    onTap: () async {
                                      Navigator.pop(context);
                                      File? image = await pickSingleImage(
                                          ImageSource.gallery);
                                      if (image != null) {
                                        setState(() {
                                          pickedImage = image;
                                        });
                                      }
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.camera_alt),
                                    title: const Text('Camera'),
                                    onTap: () async {
                                      Navigator.pop(context);
                                      File? image = await pickSingleImage(
                                          ImageSource.camera);
                                      if (image != null) {
                                        setState(() {
                                          pickedImage = image;
                                        });
                                      }
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      child: ClipOval(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: pickedImage == null
                              ? CustomCachedImage(
                                  imageUrl: widget.userModel.image ?? '',
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(
                                    pickedImage!.path,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _fullNameController,
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: ColorManager.textDark, width: 0.1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.1),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: ColorManager.textDark, width: 0.1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.1),
                        ),
                      ),
                      validator: InputValidators.emailValidator,
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    TextFormField(
                      readOnly: true,
                      controller: _phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        labelText: "Phone Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                              color: ColorManager.textDark, width: 0.1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s32,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          FocusManager.instance.primaryFocus?.unfocus();
                          // debugPrint(" picked image" + pickedImage!.path.toString());
                          context.read<ProfileBloc>().add(
                                UpdateProfile(
                                  updateProfileReq: UpdateProfileReq(
                                    fullName: _fullNameController.text,
                                    email: _emailController.text,
                                    image: pickedImage,
                                  ),
                                ),
                              );
                        }
                      },
                      child: CustomBottom(
                          text: "Update",
                          textColor: ColorManager.textDark,
                          backgroundColor: ColorManager.primary,
                          fontSize: 16,
                          padding: 16,
                          radius: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
