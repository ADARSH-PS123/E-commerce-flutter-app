import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/EditUserBloc/edit_user_bloc.dart';
import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/textField.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditUserBloc, EditUserState>(
      listenWhen: (previous, current) {
        return current.optionSuccessFailure != previous.optionSuccessFailure;
      },
      listener: (context, state) {
        state.optionSuccessFailure.fold(
            () => null,
            (either) => either.fold(
                (l) => ShowSnakBar.snakbar('Error ', context),
                (r) => ShowSnakBar.snakbar('Operation successful', context)));
      },
      builder: (context, state) {
           Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue 
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Exit Page'),
          content: Text('Do you want to exit ?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
               //return false when click on "NO"
              child:Text('No'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true), 
              //return true when click on "Yes"
              child:Text('Yes'),
            ),

          ],
        ),
      )??false; //if showDialouge had returned null, then return false
    }
        return WillPopScope(
          onWillPop: showExitPopup,
          child: Scaffold(
            body: state.isLoading
                ? const LoadingPage()
                : EditWidget(
                    picode: state.pincode,
                    userAddress: state.userAddress,
                    userName: state.userName,
                    profilePhoto: state.user.profilePhoto,
                  ),
          ),
        );
      },
    );
  }
}

class EditWidget extends StatelessWidget {
  final PinCode picode;
  final UserAddress userAddress;
  final UserName userName;
  final ProfilePhoto profilePhoto;
  const EditWidget(
      {Key? key,
      required this.picode,
      required this.profilePhoto,
      required this.userAddress,
      required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: topBar(
          showAlertDialog: true,
          title: 'Edit account',
          trailing: Row(
            children: [
              BlocProvider.of<EditUserBloc>(context).state.pincode.hasData() &&
                      BlocProvider.of<EditUserBloc>(context)
                          .state
                          .userAddress
                          .hasData() &&
                      BlocProvider.of<EditUserBloc>(context)
                          .state
                          .userName
                          .hasData()
                  ? IconButton(
                      disabledColor: appBackgroundColor,
                      icon: Icon(
                        Icons.save,
                        color: context.read<EditUserBloc>().state.pincode !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .fullAddress
                                        .pincode ||
                                context
                                        .read<EditUserBloc>()
                                        .state
                                        .userAddress !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .fullAddress
                                        .userAddress ||
                                context.read<EditUserBloc>().state.userName !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .userName
                            ? blackColor
                            : greyColor,
                      ),
                      onPressed: context.read<EditUserBloc>().state.pincode !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .fullAddress
                                        .pincode ||
                                context
                                        .read<EditUserBloc>()
                                        .state
                                        .userAddress !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .fullAddress
                                        .userAddress ||
                                context.read<EditUserBloc>().state.userName !=
                                    context
                                        .read<EditUserBloc>()
                                        .state
                                        .user
                                        .userName
                            ? () {
                        BlocProvider.of<EditUserBloc>(context)
                            .add(const EditUserEvent.editUserInfo());
                      }:null)
                  : const SizedBox(),
            ],
          ),
          context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //Profile photo edit section
            SizedBox(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: appBackgroundColor,
                    backgroundImage: profilePhoto.hasData()
                        ? CachedNetworkImageProvider(profilePhoto.getOrCrash())
                            as ImageProvider
                        : const AssetImage('assets/images/user.png'),
                    radius: 90,
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(balckColor)),
                          onPressed: () {
                            BlocProvider.of<EditUserBloc>(context)
                                .add(const EditUserEvent.editProfilePhoto());
                          },
                          label: const Text('Edit profile picture'),
                          icon: const Icon(Icons.mode_edit_outline)),
                      profilePhoto.hasData()
                          ? TextButton.icon(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(balckColor)),
                              onPressed: () {
                                BlocProvider.of<EditUserBloc>(context).add(
                                    const EditUserEvent.removeProfilePhoto());
                              },
                              label: const Text('Remove profile picture'),
                              icon: const Icon(Icons.delete_rounded))
                          : const SizedBox()
                    ],
                  )
                ],
              ),
            ),

            //name edit section
            Container(
              height: 350,
              color: appBackgroundColor,
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //name edit
                    AppTextField(
                      fieldName: 'User name',
                      initialValue: userName.getOrElse(''),
                      imageWidget: const SizedBox(),
                      onchanged: (value) {
                        BlocProvider.of<EditUserBloc>(context)
                            .add(EditUserEvent.userNameChanged(value));
                      },
                      validator: (value) {
                        return BlocProvider.of<EditUserBloc>(context)
                            .state
                            .userName
                            .value
                            .fold(
                                (l) => l.maybeMap(
                                    nullField: (value) {
                                      return 'User name Should not be empty';
                                    },
                                    orElse: () => null),
                                (r) => null);
                      },
                    ),
                    //Address Edit
                    SizedBox(
                      height: 130,
                      child: AppTextField(
                        initialValue: userAddress.getOrElse(''),
                        fieldName: 'Address',
                        maxLines: 5,
                        imageWidget: const SizedBox(),
                        onchanged: (value) {
                          BlocProvider.of<EditUserBloc>(context)
                              .add(EditUserEvent.userAddressChanged(value));
                        },
                        validator: (value) {
                          return BlocProvider.of<EditUserBloc>(context)
                              .state
                              .userAddress
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                      nullField: (value) {
                                        return 'User address Should not be empty';
                                      },
                                      orElse: () => null),
                                  (r) => null);
                        },
                      ),
                    ),
                    //pin code edit field
                    AppTextField(
                      initialValue: picode.getOrElse(''),
                      fieldName: 'Pin code',
                      imageWidget: const SizedBox(),
                      onchanged: (value) {
                        BlocProvider.of<EditUserBloc>(context)
                            .add(EditUserEvent.userPincodeChanged(value));
                      },
                      validator: (value) {
                        return BlocProvider.of<EditUserBloc>(context)
                            .state
                            .pincode
                            .value
                            .fold(
                                (l) => l.maybeMap(
                                    invalidPincode: (value) =>
                                        "Invalid Pincode",
                                    orElse: () => null),
                                (r) => null);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
