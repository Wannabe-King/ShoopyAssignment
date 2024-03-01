import 'package:bloc/bloc.dart';
import 'package:shoopyassignment/model/messagemodel.dart';

class ChatEvent {}

class ChatState {
  final List<MessageModel> messages;

  ChatState({required this.messages});
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState(messages: []));

  @override
  Stream<ChatState> mapEventToState(ChatEvent event) async* {
    // Handle events if needed
    yield state;
  }
}
