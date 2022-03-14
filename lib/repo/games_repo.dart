import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:news_bloc/models/data_model.dart';

class GamesRepo {
 
  Future<List<DataModel>?> getGamesData() async {
    String url = 'https://www.gamerpower.com/api/giveaways';
    var result = await http.Client().get(Uri.parse(url));
    if (result.statusCode != 200) {
      return null;
    } else {
      Iterable models = jsonDecode(result.body);
      List<DataModel> dataModeling = [];
      for (var model in models) {
        DataModel dataModel = DataModel.fromJson(model);
        dataModeling.add(dataModel);
      }
      return dataModeling;
    }
  }
}
