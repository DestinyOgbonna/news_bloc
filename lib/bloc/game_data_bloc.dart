import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_bloc/models/data_model.dart';
import 'package:news_bloc/repo/games_repo.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  final GamesRepo gamesRepo; // GamesRepo used to call the games data
  GameDataBloc(this.gamesRepo) : super(GameDataInitialState()) {
    on<GameDataEvent>((event, emit) async {
      // in the if statement we passed an event
      if (event is LoadGameDataEvent) {
        // in the emit you pass in a state
        emit(GameDataLoadingState());
        List<DataModel>? apiResult = await gamesRepo.getGamesData();
        if (apiResult == null) {
        
          emit(GameDataErrorState());
        } else {
          emit(GameDataLoadedState(apiResult: apiResult));
        }
      }
    });
  }
}
