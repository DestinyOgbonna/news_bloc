import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_bloc/models/data_model.dart';
import 'package:news_bloc/views/LandingPage/details.dart';
import 'package:news_bloc/views/LandingPage/landing_page.dart';

part 'router.gr.dart';
@MaterialAutoRouter(

  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page:LandingPage, initial: true),
    AutoRoute(page:DetailsPage),
  ]
)

class AppRouter extends _$AppRouter{}