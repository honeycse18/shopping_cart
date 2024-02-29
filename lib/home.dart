import 'package:flutter/material.dart';
import 'package:shopping_cart/country_widget.dart';
import 'package:shopping_cart/custom_field.dart';
import 'package:shopping_cart/phon_field.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
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

                  controller: emailController,
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                ),
                SizedBox(
                  height: 22,
                ),
                PhoneNumberTextFormFieldWidget(
                  //     initialCountryCode: currentCountryCode,
                  controller: phoneController,
                  labelText: 'Phone Number',
                  hintText: 'Phone Number',
                  //  onCountryCodeChanged: controller.onCountryChange,
                ),
                SizedBox(
                  height: 22,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: CustomTextFormField(
                          controller: countryController,
                          labelText: 'Country',
                          onTap: () {},
                          hintText: 'Country',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: CustomTextFormField(
                          controller: cityController,
                          labelText: 'City',
                          onTap: () {},
                          hintText: 'City',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: CustomTextFormField(
                          controller: postalCodeController,
                          labelText: 'Zip code',
                          onTap: () {},
                          hintText: 'Zip Code',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  controller: addressController,
                  labelText: 'Address',
                  onTap: () {},
                  hintText: 'Enter your address',
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 280,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oder Summery',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                r'$600',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Discount',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                r'$0',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Container(
                            height: 50,
                            width: 360,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text('Pay Now')),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
