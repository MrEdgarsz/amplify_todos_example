part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.fetch() = _Fetch;
  const factory TodoEvent.add(
      String task, String description, TodoStatus state) = _Add;
  const factory TodoEvent.delete(Todo todo) = _Delete;
  const factory TodoEvent.update(Todo todo) = _Update;
  const factory TodoEvent.sync(List<Todo> todos) = _Sync;
}
