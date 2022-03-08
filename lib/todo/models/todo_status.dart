import 'package:todos_example/models/TodoStatus.dart' as amplify;

enum TodoStatus {
  todo,
  inprogress,
  finished,
}

extension AmplifyTodoStatus on TodoStatus {
  amplify.TodoStatus get asAmplifyModel => amplify.TodoStatus.values[index];
}

extension TodoStatusFromAmplify on amplify.TodoStatus {
  TodoStatus get asTodoStatus => TodoStatus.values[index];
}
