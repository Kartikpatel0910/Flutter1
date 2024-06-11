// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rudra_it_hub/controller/otp_cantroller.dart';
import 'package:rudra_it_hub/widgets/common_appbar.dart';
import 'package:rudra_it_hub/widgets/common_button.dart';
import 'package:rudra_it_hub/widgets/common_text_field.dart';

import '../../utils/constants.dart';

class OTPScreen extends StatelessWidget {
  // ignore: unused_field

  final _key2 = GlobalKey<FormState>();
  OTPController otpController = OTPController();

  final TextEditingController _otpController = TextEditingController();

  final String verificationId;
  final String moNumber;

  OTPScreen({super.key, required this.verificationId, required this.moNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CommonAppBarScreen(
          needPopUpButton: false,
          title: 'OTP Verification',
          backgroundColor: whiteColor, // Customize the color here
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Please Enter the 6-digit OTP sent to your phone.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // ignore: sized_box_for_whitespace
              Container(
                width: 200,
                child: Form(
                  key: _key2,
                  child: CommonTextFormField(
                    controller: _otpController, // Store text ,_ : private
                    errorMessage: 'Enter Valid OTP',
                    inputType: TextInputType.number,
                    label: 'Enter OTP',
                    formatter: [otpFormatter, mobileNumberFormat],
                    onTap: () {},
                    isOTPField: true,
                    autoFocus: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CommonButton(
                
                  onPress: () async {
                    if (_key2.currentState!.validate()) {
                      otpController.changeLoading(true, context);
                                        FocusManager.instance.primaryFocus?.unfocus();

                    // FocusScope.of(context).unfocus();
                    otpController.isLoading.value
                        ? showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                  child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(purpleColor),
                              ));
                            })
                        : null;
                    otpController.verifyOTP(
                        verificationId, _otpController, moNumber, context);
                    }
                    
                  },
                  title: "Verify OTP")
            ],
          ),
        ),
      ),
    );
  }
}
