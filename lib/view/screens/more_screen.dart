import 'package:albetrozz_fly/view/screens/customized_holiday_screen.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(

      /// APPBAR
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,

        title: Text(
          "Enquire",
          style: TextStyle(fontSize: w * 0.05),
        ),

        backgroundColor: const Color(0xFFD3E4F4),

        actions: [

          Padding(
            padding: EdgeInsets.only(right: w*0.03),

            child: Container(
              height: h*0.05,
              width: w*0.11,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(w*0.02),
              ),

              child: Icon(
                Icons.notification_important,
                color: Colors.black,
                size: w*0.05,
              ),
            ),
          )

        ],
      ),

      /// BODY
      body: Container(

        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Color(0xFFD4E4F4),
              Colors.white
            ],
          ),
        ),

        child: Padding(

          padding: EdgeInsets.all(w * 0.04),

          child:
          GestureDetector(child: ListView(

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

              SizedBox(height: h * 0.03),

              /// MORE OPTIONS
              Text(
                "More Options",
                style: TextStyle(
                    fontSize: w*0.05,
                    fontWeight: FontWeight.bold,
                    color:Color(0xFF2F4FA2)
                ),
              ),

              SizedBox(height: h*0.02),

              /// GRID CONTAINER
              Container(

                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                    )
                  ],
                ),

                child: GridView.count(

                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  crossAxisCount: 3,

                  children: [

                    gridItem(Icons.list,"Customized\nHoliday"),
                    gridItem(Icons.business,"Corporate\nTravel"),
                    gridItem(Icons.flight,"Inbound\nTours"),
                    gridItem(Icons.people,"Tour\nManagers"),
                    gridItem(Icons.description,"Travel\nPlanners"),
                    gridItem(Icons.note,"Tour\nStatus"),

                    gridItem(Icons.currency_exchange,"Forex"),
                    gridItem(Icons.card_giftcard,"Gift a Tour"),

                  ],
                ),

              ),

              SizedBox(height: h*0.03),

              /// BOTTOM CARDS
              Row(

                children: [

                  Expanded(
                    child: bottomCard(Icons.info,"About Us"),
                  ),

                  SizedBox(width: w*0.04),

                  Expanded(
                    child: bottomCard(Icons.phone,"Contact Us"),
                  ),

                ],
              ),

              SizedBox(height: h*0.05)

            ],
          ),
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomizedHolidayScreen(),));

          },)
        ),
      ),
    );
  }



  /// GRID ITEM
  Widget gridItem(IconData icon,String title){

    return Container(
      decoration: BoxDecoration(

        border: Border(

          right: BorderSide(color: Colors.grey.shade300),
          bottom: BorderSide(color: Colors.grey.shade300),

        ),

      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Icon(icon,size: 30),

          SizedBox(height: 8),

          Text(
            title,
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }



  /// BOTTOM CARD
  Widget bottomCard(IconData icon,String title){

    return GestureDetector(

      onTap: (){
      },

      child: Container(

        height: 100,

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

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(icon,size: 35),

            SizedBox(height: 10),

            Text(title),

          ],
        ),
      ),
    );
  }

}