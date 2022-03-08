// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  _Fetch fetch() {
    return const _Fetch();
  }

  _Add add(String task, String description, TodoStatus state) {
    return _Add(
      task,
      description,
      state,
    );
  }

  _Delete delete(Todo todo) {
    return _Delete(
      todo,
    );
  }

  _Update update(Todo todo) {
    return _Update(
      todo,
    );
  }

  _Sync sync(List<Todo> todos) {
    return _Sync(
      todos,
    );
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

/// @nodoc

class _$_Fetch with DiagnosticableTreeMixin implements _Fetch {
  const _$_Fetch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TodoEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({String task, String description, TodoStatus state});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object? task = freezed,
    Object? description = freezed,
    Object? state = freezed,
  }) {
    return _then(_Add(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc

class _$_Add with DiagnosticableTreeMixin implements _Add {
  const _$_Add(this.task, this.description, this.state);

  @override
  final String task;
  @override
  final String description;
  @override
  final TodoStatus state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.add(task: $task, description: $description, state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.add'))
      ..add(DiagnosticsProperty('task', task))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Add &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) {
    return add(task, description, state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) {
    return add?.call(task, description, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(task, description, state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TodoEvent {
  const factory _Add(String task, String description, TodoStatus state) =
      _$_Add;

  String get task;
  String get description;
  TodoStatus get state;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_Delete(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_Delete with DiagnosticableTreeMixin implements _Delete {
  const _$_Delete(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.delete(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.delete'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Delete &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) {
    return delete(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) {
    return delete?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TodoEvent {
  const factory _Delete(Todo todo) = _$_Delete;

  Todo get todo;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_Update(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_Update with DiagnosticableTreeMixin implements _Update {
  const _$_Update(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.update(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.update'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Update &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) {
    return update(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) {
    return update?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TodoEvent {
  const factory _Update(Todo todo) = _$_Update;

  Todo get todo;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SyncCopyWith<$Res> {
  factory _$SyncCopyWith(_Sync value, $Res Function(_Sync) then) =
      __$SyncCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$SyncCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$SyncCopyWith<$Res> {
  __$SyncCopyWithImpl(_Sync _value, $Res Function(_Sync) _then)
      : super(_value, (v) => _then(v as _Sync));

  @override
  _Sync get _value => super._value as _Sync;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_Sync(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Sync with DiagnosticableTreeMixin implements _Sync {
  const _$_Sync(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.sync(todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.sync'))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sync &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$SyncCopyWith<_Sync> get copyWith =>
      __$SyncCopyWithImpl<_Sync>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String task, String description, TodoStatus state)
        add,
    required TResult Function(Todo todo) delete,
    required TResult Function(Todo todo) update,
    required TResult Function(List<Todo> todos) sync,
  }) {
    return sync(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
  }) {
    return sync?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String task, String description, TodoStatus state)? add,
    TResult Function(Todo todo)? delete,
    TResult Function(Todo todo)? update,
    TResult Function(List<Todo> todos)? sync,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Update value) update,
    required TResult Function(_Sync value) sync,
  }) {
    return sync(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
  }) {
    return sync?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_Update value)? update,
    TResult Function(_Sync value)? sync,
    required TResult orElse(),
  }) {
    if (sync != null) {
      return sync(this);
    }
    return orElse();
  }
}

abstract class _Sync implements TodoEvent {
  const factory _Sync(List<Todo> todos) = _$_Sync;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$SyncCopyWith<_Sync> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }

  _Loaded loaded(List<Todo> finished, List<Todo> inProgress, List<Todo> todo,
      List<Todo> all) {
    return _Loaded(
      finished,
      inProgress,
      todo,
      all,
    );
  }
}

/// @nodoc
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Todo> finished,
      List<Todo> inProgress,
      List<Todo> todo,
      List<Todo> all});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? finished = freezed,
    Object? inProgress = freezed,
    Object? todo = freezed,
    Object? all = freezed,
  }) {
    return _then(_Loaded(
      finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      inProgress == freezed
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(this.finished, this.inProgress, this.todo, this.all);

  @override
  final List<Todo> finished;
  @override
  final List<Todo> inProgress;
  @override
  final List<Todo> todo;
  @override
  final List<Todo> all;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.loaded(finished: $finished, inProgress: $inProgress, todo: $todo, all: $all)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState.loaded'))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('inProgress', inProgress))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('all', all));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.finished, finished) &&
            const DeepCollectionEquality()
                .equals(other.inProgress, inProgress) &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality().equals(other.all, all));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(finished),
      const DeepCollectionEquality().hash(inProgress),
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(all));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)
        loaded,
  }) {
    return loaded(finished, inProgress, todo, all);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
  }) {
    return loaded?.call(finished, inProgress, todo, all);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Todo> finished, List<Todo> inProgress,
            List<Todo> todo, List<Todo> all)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(finished, inProgress, todo, all);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodoState {
  const factory _Loaded(List<Todo> finished, List<Todo> inProgress,
      List<Todo> todo, List<Todo> all) = _$_Loaded;

  List<Todo> get finished;
  List<Todo> get inProgress;
  List<Todo> get todo;
  List<Todo> get all;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
