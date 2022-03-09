
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial())  {
    on<HideCardSummaEvent>((event, emit) async {
     emit(HideCardSummaState(event.isHide));
    });

    on<ChangeThemeEvent>((event, emit)async{
      emit(ChangeThemeState(event.themeNumber));
    });

    on<OplataWidgetEvent>((evenet, emit){
      emit(OplataWidgetState(widgetName: evenet.widgetName));
    });
  }
}
