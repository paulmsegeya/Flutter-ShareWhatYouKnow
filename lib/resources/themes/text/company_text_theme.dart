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

abstract class CompanyTextTheme {
  TextTheme baseTextTheme;
  TextTheme primaryTextTheme;
  TextTheme secondaryTextTheme;

  CompanyTextTheme(
    CompanyColors companyColors,
  ) {
    final colorScheme = companyColors.colorScheme;
    baseTextTheme = buildBaseTextTheme(colorScheme.onSurface, colorScheme.onSurface);
    primaryTextTheme = buildPrimaryTextTheme(colorScheme.onPrimary, colorScheme.onPrimary);
    secondaryTextTheme = buildSecondaryTextTheme(colorScheme.onSecondary, colorScheme.onSecondary);
  }

  TextTheme buildBaseTextTheme(Color displayColor, Color bodyColor);
  TextTheme buildPrimaryTextTheme(Color displayColor, Color bodyColor);
  TextTheme buildSecondaryTextTheme(
    Color displayColor,
    Color bodyColor,
  );
}
