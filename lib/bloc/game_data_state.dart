part of 'game_data_bloc.dart';

@immutable
abstract class GameDataState {}

class GameDataInitialState extends GameDataState {}

// the state initializes the state of the gameData.

class GameDataLoadingState extends GameDataState {
  // this state shows that the data is loading
}

class GameDataLoadedState extends GameDataState {
  //this data shows a response when data is loaded
  final List<DataModel> apiResult;
  GameDataLoadedState({
required this.apiResult
  });
}
class GameDataErrorState extends GameDataState{}