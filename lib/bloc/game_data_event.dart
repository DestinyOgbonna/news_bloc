part of 'game_data_bloc.dart';

@immutable
abstract class GameDataEvent {}
// this event are the responses we get after a state. 
//e.g displaying the api data is an event
class LoadGameDataEvent extends GameDataEvent{} 