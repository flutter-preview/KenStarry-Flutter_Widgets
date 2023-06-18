import 'package:flutter/material.dart';
import 'package:flutter_map_widgets/libraries/bar_graph/bar_graph.dart';
import 'package:flutter_map_widgets/lists/fixed_extent_scroll_indicator.dart';
import 'package:flutter_map_widgets/lists/my_gridview.dart';
import 'package:flutter_map_widgets/lists/my_listview.dart';
import 'package:flutter_map_widgets/lists/my_listview_seperated.dart';
import 'package:flutter_map_widgets/lists/normal_listvew.dart';
import 'package:flutter_map_widgets/shorts/glass_morphism.dart';
import 'package:flutter_map_widgets/widgets/about_dialog.dart';
import 'package:flutter_map_widgets/widgets/about_list_tile.dart';
import 'package:flutter_map_widgets/widgets/absorb_pointer.dart';
import 'package:flutter_map_widgets/widgets/alert_dialog.dart';
import 'package:flutter_map_widgets/widgets/align.dart';
import 'package:flutter_map_widgets/widgets/animated_container.dart';
import 'package:flutter_map_widgets/widgets/app_bar.dart';
import 'package:flutter_map_widgets/widgets/aspect_ratio.dart';
import 'package:flutter_map_widgets/widgets/auto_complete.dart';
import 'package:flutter_map_widgets/widgets/backdrop_filter.dart';
import 'package:flutter_map_widgets/widgets/banner.dart';
import 'package:flutter_map_widgets/widgets/bottom_navbar.dart';
import 'package:flutter_map_widgets/widgets/bottom_navbar_custom1.dart';
import 'package:flutter_map_widgets/widgets/bottom_navigation/curved_bottom_navbar.dart';
import 'package:flutter_map_widgets/widgets/bottom_navigation/navigate_calls.dart';
import 'package:flutter_map_widgets/widgets/date_picker.dart';
import 'package:flutter_map_widgets/widgets/drawer/hidden_drawer.dart';
import 'package:flutter_map_widgets/widgets/dropdown_button_form.dart';
import 'package:flutter_map_widgets/widgets/dropdown_menu.dart';
import 'package:flutter_map_widgets/widgets/expanded_tile.dart';
import 'package:flutter_map_widgets/widgets/page_view.dart';
import 'package:flutter_map_widgets/widgets/percent_indicator.dart';
import 'package:flutter_map_widgets/widgets/popup_menu.dart';
import 'package:flutter_map_widgets/widgets/tab_bar.dart';

void main() => runApp(MaterialApp(
  home: const MyPopupMenu(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.deepOrange),
));