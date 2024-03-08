import 'dart:math';

import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/home_page/models/news_events_model.dart';

class NewsandEventsController extends GetxController {
  var newsandEvents = <NewsandEvents>[].obs;
  var isLoading = true.obs;
   

  @override
  void onInit() {
   fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      var news = await GetNews.fetchNewsandEvents();
      if (news != null) {
        newsandEvents.value = news;
      }
    } finally {
      isLoading(false);
    }
  }
}
