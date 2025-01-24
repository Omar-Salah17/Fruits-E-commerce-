import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utlis/app_images.dart';
import 'package:fruits_app/features/on%20borading/presentation/views/on_borading_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
      excuteNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(Assets.planet),
                ],
              ),
              SvgPicture.asset(Assets.fruitsSplash),
              SvgPicture.asset(Assets.bubles , fit: BoxFit.fill,),

      ],
    );
  }

  void excuteNavigation()
  {
    Future.delayed(const Duration(seconds: 3 ), (){
      Navigator.pushReplacementNamed(context, OnBoradingView.routeName); // replacment to replace the splash with on boarding and not be able to go back to splash 

    });
  }
}