import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class EnquireScreen extends StatefulWidget {
  const EnquireScreen({super.key});

  @override
  State<EnquireScreen> createState() => _EnquireScreenState();
}

class _EnquireScreenState extends State<EnquireScreen> {
  @override
  Widget build(BuildContext context) {
    bool isOpen = false;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: const Text("Enquire"),
        backgroundColor: const Color(0xFFD3E4F4),
        actions: [
          Container(
            height: h * 0.05,
            width: w * 0.11,
            margin: EdgeInsets.only(right: w * 0.03),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(w * 0.02),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_important,
                color: Colors.black,
                size: w * 0.05,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD4E4F4),
              Colors.white,
            ],
          ),
        ),
        child:
        Padding(
          padding: EdgeInsets.all(w * 0.04),
          child: ListView(
            children: [
              SizedBox(height: h * 0.02),

              Text(
                "We're Here to Help",
                style: TextStyle(fontSize: w * 0.06),
              ),

              SizedBox(height: h * 0.005),

              Text(
                "Anytime, Anywhere",
                style: TextStyle(
                  fontSize: w * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: h * 0.005),

              Text(
                "Choose the most convenient way to reach Veena World.",
                style: TextStyle(fontSize: w * 0.03),
              ),

              SizedBox(height: h * 0.02),

              Container(
                padding: EdgeInsets.all(w * 0.04),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(w * 0.05),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Want us to call you?",
                      style: TextStyle(
                        fontSize: w * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: h * 0.02),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w * 0.03),
                        ),
                      ),
                    ),

                    SizedBox(height: h * 0.02),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w * 0.03),
                        ),
                      ),
                    ),

                    SizedBox(height: h * 0.02),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w * 0.03),
                        ),

                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),

                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [


                              CountryCodePicker(
                                onChanged: (country) {},
                                initialSelection: 'IN',
                                favorite: const ['+91', 'IN'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                flagWidth: 20, //Tiranga size kam
                                textStyle: const TextStyle(fontSize: 13),
                              ),



                              const Icon(
                                Icons.phone,
                                size: 13,
                                color: Colors.grey,
                              ),

                              const SizedBox(width: 2),


                              const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(width: 4),
                            ],
                          ),
                        ),
                      ),
                    ),



                    SizedBox(height: h * 0.02),

                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: "Message",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w * 0.03),
                        ),
                      ),
                    ),

                    SizedBox(height: h * 0.025),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(w * 0.03),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: h * 0.018,
                          ),
                        ),
                        child: Text(
                          "Request a Call Back",
                          style: TextStyle(
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),




                  ],
                ),
              ),
              SizedBox(height: 22,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade400,
                    ),


                  ),
                ],
              ),

              SizedBox(height: 22,),
              Text("Nearest Veena World",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 22,),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Call us on",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "For Indian Guests",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// Indian Phone
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined, size: 20),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "1800 313 5555",
                            style: TextStyle(
                              color: Color(0xFF2F4FA2),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// Indian Email
                    Row(
                      children: [
                        const Icon(Icons.mail_outline, size: 20),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "travel@veenaworld.com",
                            style: TextStyle(
                              color: Color(0xFF2F4FA2),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),

                    const Text(
                      "For Foreign Int./NRIs Guests",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// Foreign Phone
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined, size: 20),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "+91 915 200 4511",
                            style: TextStyle(
                              color: Color(0xFF2F4FA2),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// Foreign Email
                    Row(
                      children: [
                        const Icon(Icons.mail_outline, size: 20),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "inbound@veenaworld.com",
                            style: TextStyle(
                              color: Color(0xFF2F4FA2),
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),

                    const Text(
                      "Corporate Office",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.location_on_outlined, size: 20),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "7th Floor, Veena Patil Hospitality Pvt. Ltd, "
                                "Neelkanth Corporate Park, Kirol Rd, "
                                "Vidyavihar West, Mumbai, Maharashtra - 400086",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    GestureDetector(
                      onTap: () {

                      },
                      child: const Text(
                        "Get Directions",
                        style: TextStyle(
                          color: Color(0xFF2F4FA2),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// WhatsApp Row (Spacing Fixed)
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/whatApp.png",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "+9188 799 2221",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF2F4FA2),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Expanded(
                          child: Text(
                            "(For foreign Nationals only)",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    ExpansionTile(
                      leading: const Icon(Icons.access_time, size: 25),
                      title: const Text(
                        "Working Hours",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,   // Title font size bada
                        ),
                      ),
                      childrenPadding: const EdgeInsets.only(left: 20, bottom: 15),
                      children: const [

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Fri         •   10AM   - 7PM",
                            style: TextStyle(fontSize: 14),   //  Font size bada
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sat        •   10AM   - 7PM",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sun       •   Closed",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mon      •   10AM   - 7PM",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Tue       •   10AM   - 7PM",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Wed      •   10AM   - 7PM",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Thu      •   10AM   - 7PM",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 22,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade400,
                    ),


                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text("Nearest Albetrozz Fly",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              SizedBox(height: 10,),
              Container(

                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          "West Bengal - New Town - Ace Tours & \n Travels",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        GestureDetector(
                          onTap: () {
                            print("Call Button Clicked");
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.call,
                              size: 20,
                            ),
                          ),
                        )



                      ],
                    ),

                    SizedBox(height: 10),

                    /// Sales Office + Open
                    Row(
                      children: [

                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.deepOrangeAccent),
                          ),
                          child: Text(
                            "Sales Office",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ),

                        SizedBox(width: 10),

                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "OPEN",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    /// Address
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Icon(Icons.location_on_outlined),

                        SizedBox(width: 6),

                        Expanded(
                          child: Text(
                            "7/1, Lords Building, Lord Sinha Road, Nr Rabindra Sadan Metro Station, Kolkata - 700071, West Bengal",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    /// Get Direction
                    Text(
                      "Get Directions",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    SizedBox(height: 10),

                    /// Time
                    Row(
                      children: [

                        Icon(Icons.access_time),

                        SizedBox(width: 6),

                        Text(
                          "Mon to Sat, 10:00 AM - 07:00 PM",
                        )
                      ],
                    ),
                    Divider(),

                    /// Title + Call Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Text(
                          "Kolkata",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        GestureDetector(
                          onTap: () {
                            print("Call Button Clicked");
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.call,
                              size: 20,
                            ),
                          ),
                        )



                      ],
                    ),

                    SizedBox(height: 10),

                    /// Sales Office + Open
                    Row(
                      children: [

                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.purple),
                          ),
                          child: Text(
                            "Sales Office",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),

                        SizedBox(width: 10),

                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "OPEN",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    /// Address
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Icon(Icons.location_on_outlined),

                        SizedBox(width: 6),

                        Expanded(
                          child: Text(
                            "7/1, Lords Building, Lord Sinha Road, Nr Rabindra Sadan Metro Station, Kolkata - 700071, West Bengal",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    /// Get Direction
                    Text(
                      "Get Directions",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    SizedBox(height: 10),

                    /// Time
                    Row(
                      children: [

                        Icon(Icons.access_time),

                        SizedBox(width: 6),

                        Text(
                          "Mon to Sat, 10:00 AM - 07:00 PM",
                        )
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white, // White Background
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Shadow
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Looking for another branch?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          "Explore 50+ branches across India.",
                          style: TextStyle(
                              color: Colors.grey,fontSize: 10
                          ),
                        ),
                      ],
                    ),

                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),

                  ],
                ),
              ),
              SizedBox(height: 60,),

            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(width: 200,
        child: FloatingActionButton(backgroundColor:Color(0xFF2F4FA2),
          onPressed: () {

          },child: Row(children: [
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Book Online Anytime",style: TextStyle(fontSize: 15,color: Colors.white),),
                Text("365 days, 24*7",style: TextStyle(fontSize: 10,color: Colors.white),),
              ],),
            SizedBox(width: 15,),
            Container(height: 36,width: 36,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellow),child: Icon(Icons.navigate_next),)
          ],),),
      ),
    );
  }
}
