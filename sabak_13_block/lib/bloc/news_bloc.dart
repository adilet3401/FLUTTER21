import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_13_block/model.dart';
import 'package:sabak_13_block/service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final ServiceData servicedata;
  NewsBloc({required this.servicedata}) : super(LoadingState()) {
    on<NewsEvent>((NewsEvent event, Emitter<NewsState> emit) async {
      emit(LoadingState());
      try {
        final news = await servicedata.fetchData();
        emit(LoadedState(news: news!));
      } catch (e) {
        emit(ErrorState(errorText: e.toString()));
      }
    });
  }
}
