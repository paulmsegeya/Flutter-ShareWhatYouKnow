/*
 * Copyright 2020 Cagatay Ulusoy (Ulus Oy Apps). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:ulusoyapps_flutter/resources/colors/company_colors.dart';
import 'package:ulusoyapps_flutter/resources/themes/text/company_text_theme.dart';

import 'company_theme_data.dart';

class CompanyThemeDataA extends CompanyThemeData {
  @override
  double borderRadiusValue = 20.0;

  @override
  BorderRadius borderRadius;

  CompanyThemeDataA(
    Brightness brightness,
    CompanyColors companyColors,
    CompanyTextTheme companyTextTheme,
  ) : super(brightness, companyColors, companyTextTheme) {
    fabTheme = FloatingActionButtonThemeData();
    borderRadius = BorderRadius.circular(borderRadiusValue);
    toggleButtonsThemeData = ToggleButtonsThemeData(
      borderRadius: borderRadius,
    );
    materialShapeBorder = RoundedRectangleBorder(
      borderRadius: borderRadius,
    );
    barGraphShapeBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadiusValue),
        topRight: Radius.circular(borderRadiusValue),
      ),
    );
    bottomAppBarTheme = BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: companyColors.colorScheme.primary,
    );
  }
}