import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {

  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCDCDC),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             // Container(
             //   color: Colors.white,
             //     child: SizedBox(height: 67.0)),
            Container(
              padding: EdgeInsets.only(top:55.h ),
              color: Colors.white,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left:15.w),height: 55.h,
                     //color: Colors.blue,
                     child: Image.asset('asset/image/logo_sf.png')),
                  // Row(
                  //   children: [
                  //     SvgPicture.asset(
                  //       'asset/image/logo.svg',width: 65,height:65 ,
                  //     ),
                  //     const SizedBox(width: 5.0),
                  //     Column(
                  //       children: [
                  //         SvgPicture.asset(
                  //           'asset/image/sunu.svg',width: 45,height:45
                  //         ),
                  //         const SizedBox(height: 6.0)
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'asset/image/alarme.svg',width: 23.w,height:23.h
                        ),
                        const SizedBox(width: 17),
                        SvgPicture.asset(
                          'asset/image/search.svg',width: 23.w,height:23.h
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:35.h ,left: 15.w),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
             // margin: EdgeInsets.only(left: 30),
              child: Text(
                'Terrains disponibles',
                style: GoogleFonts.sora(fontWeight: FontWeight.bold,fontSize:22,color: const Color(0xfff1F243A)
                 // textStyle: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
             Container(
                 color: Colors.white,
               child: Card(

          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Color(0xfff019F2D), width: 2.0),
          ),
          child: Column(
            children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('asset/image/location01.png'),
                    labelText: 'Lieu : Partout',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('asset/image/calendrier.png'),
                    labelText: 'Date',
                  ),
                ),TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('asset/image/Group.png'),
                    labelText: 'Nombre de joueur conseillé',
                  ),
                ),

                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Color(0xfff019F2D),
                  ),
                  child: Center(
                    child: Text(
                      'Rechercher',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                )
            ],
          ),
        ),
             ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate:  DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 7)),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.blueGrey,
              dayColor: Color(0xFF333A47),
              activeDayColor: Colors.white,
              activeBackgroundDayColor:Color(0xfff1F243B),
              dotsColor: Colors.white,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'fr',
            ),
            SizedBox(height:10),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: EdgeInsets.only(left: 15.w, right: 15.w,top: 10.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //  side: BorderSide(color: Color(0xfff019F2D), width: 2.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 75.w,
                      height:162.h,
                      child: Image.asset(
                        'asset/image/images.jpeg',fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15.w),

                        child: Column(

                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:10.h),
                            Container(
                              margin: EdgeInsets.only(right: 20.w,bottom: 4.h),
                              child: Row(
                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Terrain Sénégal Japon',
                                    style: GoogleFonts.sora(fontWeight: FontWeight.bold,fontSize:15.sp,color: const Color(0xfff1F243A)
                                      // textStyle: Theme.of(context).textTheme.displayMedium,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      'asset/image/coeur.svg',width: 20,height:20
                                  )
                                ],
                              ),
                            ),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(height:5),
                            Text(
                              'Rtes de l’aéroport (Sud Foire, Dakar)',
                              style: GoogleFonts.sora(fontSize:13,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              'Prix : 20.000 - 70.000 frs',
                              style: GoogleFonts.sora(fontSize:17,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:7),

                            Container(
                              height: 40,

                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 20),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  // Ajouter autant de Cards que nécessaire
                                ],
                              ),
                            ),
                            SizedBox(height:10),


                          ],
                        ),
                      ),
                    )

                  ],

                ),
              ),
            ),
            Container(
               //height: 160.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: EdgeInsets.only(left: 15.w, right: 15.w,top: 10.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //  side: BorderSide(color: Color(0xfff019F2D), width: 2.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 75.w,
                      height:162.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        'asset/image/img04.png',fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15.w),

                        child: Column(

                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:10.h),
                            Container(
                              margin: EdgeInsets.only(right: 20.w,bottom: 4.h),
                              child: Row(
                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Terrain Sénégal Japon',
                                    style: GoogleFonts.sora(fontWeight: FontWeight.bold,fontSize:15.sp,color: const Color(0xfff1F243A)
                                      // textStyle: Theme.of(context).textTheme.displayMedium,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      'asset/image/coeur.svg',width: 20,height:20
                                  )
                                ],
                              ),
                            ),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(height:5),
                            Text(
                              'Rtes de l’aéroport (Sud Foire, Dakar)',
                              style: GoogleFonts.sora(fontSize:13,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              'Prix : 20.000 - 70.000 frs',
                              style: GoogleFonts.sora(fontSize:17,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:7),

                            Container(
                              height: 40,

                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 20),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  // Ajouter autant de Cards que nécessaire
                                ],
                              ),
                            ),
                            SizedBox(height:10),


                          ],
                        ),
                      ),
                    )

                  ],

                ),
              ),
            ),
            Container(
               //height: 160.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: EdgeInsets.only(left: 15.w, right: 15.w,top: 10.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //  side: BorderSide(color: Color(0xfff019F2D), width: 2.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 75.w,
                      height:162.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        'asset/image/terrain01.png',fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15.w),

                        child: Column(

                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:10.h),
                            Container(
                              margin: EdgeInsets.only(right: 20.w,bottom: 4.h),
                              child: Row(
                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Terrain Sénégal Japon',
                                    style: GoogleFonts.sora(fontWeight: FontWeight.bold,fontSize:15.sp,color: const Color(0xfff1F243A)
                                      // textStyle: Theme.of(context).textTheme.displayMedium,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      'asset/image/coeur.svg',width: 20,height:20
                                  )
                                ],
                              ),
                            ),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(height:5),
                            Text(
                              'Rtes de l’aéroport (Sud Foire, Dakar)',
                              style: GoogleFonts.sora(fontSize:13,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              'Prix : 20.000 - 70.000 frs',
                              style: GoogleFonts.sora(fontSize:17,color: const Color(0xfff1F243A)
                                // textStyle: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height:7),

                            Container(
                              height: 40,

                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 20),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    // margin:EdgeInsets.only(left: 5),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: Color(0xfff019F2D),
                                      child:   Center(
                                        child: Text(
                                          '10h-11h',
                                          style: GoogleFonts.sora(fontSize:14,color:  Colors.white,fontWeight:FontWeight.bold
                                            // textStyle: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  // Ajouter autant de Cards que nécessaire
                                ],
                              ),
                            ),
                            SizedBox(height:10),


                          ],
                        ),
                      ),
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
