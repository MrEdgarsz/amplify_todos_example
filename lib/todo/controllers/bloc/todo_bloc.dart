import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_example/todo/interfaces/todo_interface.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoInterface _repository;
  TodoBloc(this._repository) : super(const TodoState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Add>(_onAdd);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  @override
  void onEvent(TodoEvent event) {
    if (kDebugMode) {
      print('[TodoBloc] onEvent: $event');
    }
    super.onEvent(event);
  }

  @override
  void onChange(change) {
    if (kDebugMode) {
      print('[TodoBloc] ${change.currentState} -> ${change.nextState}');
    }
    super.onChange(change);
  }

  Future<void> _onFetch(_, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    try {
      emit(await _fetchSortAndReturnTodos());
    } catch (e) {
      emit(const TodoState.error("Could not fetch todos"));
    }
  }

  Future<void> _onAdd(_Add event, Emitter<TodoState> emit) async {
    try {
      await _repository.createTodo(
        Todo(
          id: null,
          title: event.task,
          description: event.description,
          state: event.state,
        ),
      );
      emit(await _fetchSortAndReturnTodos());
    } catch (e) {
      emit(const TodoState.error("Could not add todo"));
    }
  }

  Future<void> _onUpdate(_Update event, Emitter<TodoState> emit) async {
    try {
      await _repository.updateTodo(
        Todo(
          id: event.todo.id,
          title: event.todo.title,
          description: event.todo.description,
          state: event.todo.state,
        ),
      );
      emit(await _fetchSortAndReturnTodos());
    } catch (e) {
      emit(const TodoState.error("Could not update todo"));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<TodoState> emit) async {
    if (event.todo.id == null) {
      emit(const TodoState.error("Id cannot be null"));
      return;
    }
    try {
      await _repository.deleteTodo(event.todo.id!);
      emit(await _fetchSortAndReturnTodos());
    } catch (e) {
      emit(const TodoState.error("Could not delete todo"));
    }
  }

  Future<TodoState> _fetchSortAndReturnTodos() async {
    final alltodos = await _repository.getTodos();
    final todos =
        alltodos.where((todo) => todo.state == TodoStatus.todo).toList();
    final finishedTodos =
        alltodos.where((todo) => todo.state == TodoStatus.finished).toList();
    final inProgressTodos =
        alltodos.where((todo) => todo.state == TodoStatus.inprogress).toList();
    return TodoState.loaded(finishedTodos, inProgressTodos, todos, alltodos);
  }
}
