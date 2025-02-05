import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_13_block/model.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(LoadingState()) {
    on<NewsEvent>((NewsEvent event, Emitter<NewsState> emit) {});
  }
}
