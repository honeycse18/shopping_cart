import 'package:flutter/material.dart';
import 'package:shopping_cart/custom_field.dart';
import 'package:shopping_cart/phon_field.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shopping Address',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 32,
                ),
                CustomTextFormField(
                  controller: nameController,
                  labelText: 'Full Name',
                  hintText: 'Enter your name',
                ),
                SizedBox(
                  height: 22,
                ),
                CustomTextFormField(
                  // isReadOnly: !controller.screenParameter!.isEmail,
                  isReadOnly: true,
                  controller: emailController,
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                ),
                SizedBox(
                  height: 22,
                ),
                PhoneNumberTextFormFieldWidget(
                  isReadOnly: true,
                  //     initialCountryCode: currentCountryCode,
                  controller: phoneController,
                  labelText: 'Phone Number',
                  hintText: 'Phone Number',
                  //  onCountryCodeChanged: controller.onCountryChange,
                ),
                SizedBox(
                  height: 22,
                ),
                CustomTextFormField(
                  controller: addressController,
                  labelText: 'Address',
                  isReadOnly: true,
                  onTap: () {},
                  hintText: 'Enter your address',
                ),

                SizedBox(
                  height: 32,
                ),
                // DropdownButtonFormFieldWidget(
                //   hintText: 'Your Country',
                //   labelText: 'Select your country'
                //   value: controller.selectedCountry,
                //   items: controller.countryList,
                //   isDense: false,
                //   // getItemText: (p0) => p0.name,
                //   getItemChild: controller.countryElementsList,
                //   onChanged: (selectedItem) {
                //     controller.selectedCountry =
                //         selectedItem ?? UserDetailsCountry();
                //     controller.countryEdit =
                //         controller.userDetails.country.id != selectedItem?.id;
                //     controller.update();
                //     controller.editable();
                //   },
                // ),
                // AppGaps.hGap24,
                // StretchedTextButtonWidget(
                //     onTap: controller.editActive
                //         ? controller.onSaveChangesButtonTap
                //         : null,
                //     buttonText: AppLanguageTranslation
                //         .saveChangesTransKey.toCurrentLanguage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
