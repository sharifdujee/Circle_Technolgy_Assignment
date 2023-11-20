import 'dart:typed_data';
import 'dart:io';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  TextEditingController _dob = TextEditingController();
  Uint8List? imageData;
  bool _lightIsOn = false;
  String? gender;
  String? dob;
  Future<void> loadImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final imageBytes = await pickedFile.readAsBytes();
      setState(() {
        imageData = Uint8List.fromList(imageBytes);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                size: 60,
              ),
            ),
            Positioned.fill(
              child: Image(
                image: NetworkImage(
                    'https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/364744708_1436749223823799_7333452547404295616_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=DzP-7v5SV3sAX8SuR1u&_nc_ht=scontent.fdac11-1.fna&oh=00_AfBdGeBmXbgI6L6YezGVeA4zjbAh09rJnT3aSB6dCKaBvw&oe=655E98A7'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.green.withOpacity(0.4),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: imageData != null
                  ? Image.memory(
                      imageData!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  : Container(), // Handle null case here
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "User Registration Form",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          image: NetworkImage(
                              'https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/315970250_1279205639578159_3224007110235777317_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=CG7tjwgNC68AX_e8FDu&_nc_ht=scontent.fdac11-1.fna&oh=00_AfBvXd0KD-lLkq8sJqaCcIq8c-ifcXFydnkN7aXkmy0f8Q&oe=655F139A'),
                          loadingBuilder: (context, child, progress) =>
                              progress == null
                                  ? child
                                  : Container(
                                      width: 240,
                                      height: 240,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                          height: 240,
                          width: 240,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: loadImage,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 16),
                        child: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: (){
                    //     setState(() {
                    //       _lightIsOn = !_lightIsOn;
                    //
                    //     });
                    //   },
                    //   child: Container(
                    //
                    //     child: Icon(
                    //       Icons.lightbulb_outline,
                    //       color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                    //       size: 60,
                    //     ),
                    //     color: Colors.yellow,
                    //     padding: EdgeInsets.all(5),
                    //
                    //   ),
                    //
                    // ),

                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: ' First Name',
                          hintText: 'Enter Your First Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: ' Last Name',
                          hintText: 'Enter Your  Last Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),

                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.mail)),
                    ),
                    Divider(),

                    IntlPhoneField(
                      initialCountryCode: "BD",
                      languageCode: 'en',
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Mobile ',
                          hintText: 'Enter Your Mobile Number',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.phone)),
                    ),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please Select Your Gender',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Male',
                              groupValue: gender,
                              onChanged: (val) {
                                setState(() {
                                  gender = val.toString();
                                });
                              },
                            ),
                            Text('Male'),
                            Radio(
                              value: 'Female',
                              groupValue: gender,
                              onChanged: (val) {
                                setState(() {
                                  gender = val.toString();
                                });
                              },
                            ),
                            Text('Female'),
                            Radio(
                              value: 'Other',
                              groupValue: gender,
                              onChanged: (val) {
                                setState(() {
                                  gender = val.toString();
                                });
                              },
                            ),
                            Text('Others'),
                          ],
                        ),
                        // Text(
                        //   'Selected Gender: $gender',
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),

                    Divider(),
                    Column(
                      children: [
                        Text(
                          'What is Your Gender',
                          style: TextStyle(
                            fontSize: 20,
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                        RadioListTile(
                            title: Text('Male'),
                            value: 'Male',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            }),
                        RadioListTile(
                            title: Text('Female'),
                            value: 'Female',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            }),
                        RadioListTile(
                            title: Text('Others'),
                            value: 'Others',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            }),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: FormBuilderTextField(
                        controller: _dob,
                        name: 'DOB',
                        decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded),
                          labelText: 'Select Date',
                          border: OutlineInputBorder(),
                        ),
                        onTap: () async {
                          DateTime? dob = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );
                          if (dob != null) {
                            setState(() {
                              _dob.text = DateFormat('yyyy-MM-dd').format(dob);
                            });
                          }
                        },
                      ),
                    ),
                    Divider(),
                    DropDownTextField(
                        dropdownColor: Colors.green,
                        onChanged: (v1) {
                          setState(() {});
                        },
                        listSpace: 20,
                        listPadding: ListPadding(top: 20),
                        validator: (val2) {
                          if (val2 == null) {
                            return "The Filed is Required";
                          } else {
                            return null;
                          }
                        },
                        enableSearch: true,
                        dropDownList: const [
                          DropDownValueModel(
                              name: 'Dhaka',
                              value: 'Dhaka',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Chittagong',
                              value: 'Chittagong',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Sylhet',
                              value: 'Sylhet',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Mumensingh',
                              value: 'Mymensingh',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Rajshahi',
                              value: 'Rajshahi',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Rangpur',
                              value: 'Rangpur',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Khulna',
                              value: 'Khulna',
                              toolTipMsg: 'Select Your Division'),
                          DropDownValueModel(
                              name: 'Barishal',
                              value: 'Division',
                              toolTipMsg: 'Select Your Division'),
                        ]),

                    Divider(),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'User Name',
                          hintText: 'Enter Your User Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'User Name',
                          hintText: 'Enter Your User Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'User Name',
                          hintText: 'Enter Your User Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'User Name',
                          hintText: 'Enter Your User Name',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.lightBlueAccent,
                          prefixIcon: Icon(Icons.verified_user)),
                    ),
                    Divider(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        alignment: Alignment(0, 0),
                        animationDuration: Duration(
                          microseconds: 1000,
                        ),
                        enableFeedback: true,
                      ),
                      onPressed: () {},
                      child: Text('Register'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Continue with the rest of your code
