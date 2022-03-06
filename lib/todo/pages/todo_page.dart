import 'package:collection/src/iterable_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_example/constants.dart' as constants;
import 'package:todos_example/todo/controllers/bloc/todo_bloc.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';
import 'package:todos_example/todo/services/todo_test_service.dart';
import 'package:todos_example/todo/widgets/todo_list.dart';
import 'package:todos_example/todo/widgets/todo_tile.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  static PageRoute route = MaterialPageRoute(builder: (_) => const TodoPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: const TodoView(),
      create: (context) =>
          TodoBloc(TodoTestService())..add(const TodoEvent.fetch()),
    );
  }
}

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  bool _isDeboucing = false;

  bool isScrollnCooldown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (BuildContext context, state) {
            return state.maybeMap(
              loaded: (state) {
                return PageView(
                  padEnds: true,
                  controller: _pageController,
                  children: [
                    TodoList(
                      itemCount: state.todo.length,
                      onCandidateAccepted: (Todo todo) {
                        context.read<TodoBloc>().add(
                              TodoEvent.update(
                                todo.copyWith(state: TodoStatus.todo),
                              ),
                            );
                      },
                      itemBuilder: (context, index) {
                        final todo = state.todo[index];
                        return TodoTile(
                          key: ValueKey("TodoTile-${todo.id}"),
                          todo: todo,
                          onDragUpdate: _onDragUpdate,
                          onTap: () {
                            context.read<TodoBloc>().add(
                                  TodoEvent.update(
                                    todo.copyWith(state: TodoStatus.finished),
                                  ),
                                );
                          },
                        );
                      },
                      candidateBuilder: _buildCandidate,
                    ),
                    TodoList(
                      itemCount: state.inProgress.length,
                      onCandidateAccepted: (Todo todo) {
                        context.read<TodoBloc>().add(
                              TodoEvent.update(
                                todo.copyWith(state: TodoStatus.inprogress),
                              ),
                            );
                      },
                      itemBuilder: (context, index) {
                        final todo = state.inProgress[index];
                        return TodoTile(
                          key: ValueKey("TodoTile-${todo.id}"),
                          todo: todo,
                          onDragUpdate: _onDragUpdate,
                          onTap: () {
                            context.read<TodoBloc>().add(
                                  TodoEvent.update(
                                    todo.copyWith(state: TodoStatus.finished),
                                  ),
                                );
                          },
                        );
                      },
                      candidateBuilder: _buildCandidate,
                    ),
                    TodoList(
                      itemCount: state.finished.length,
                      onCandidateAccepted: (Todo todo) {
                        context.read<TodoBloc>().add(
                              TodoEvent.update(
                                todo.copyWith(state: TodoStatus.finished),
                              ),
                            );
                      },
                      itemBuilder: (context, index) {
                        final todo = state.finished[index];
                        return TodoTile(
                          key: ValueKey("TodoTile-${todo.id}"),
                          todo: todo,
                          onDragUpdate: _onDragUpdate,
                          onTap: () {
                            context.read<TodoBloc>().add(
                                  TodoEvent.update(
                                    todo.copyWith(state: TodoStatus.todo),
                                  ),
                                );
                          },
                        );
                      },
                      candidateBuilder: _buildCandidate,
                    ),
                  ],
                );
              },
              error: (state) => Center(
                child: Text(state.message),
              ),
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _showAddTodoModal();
        },
      ),
    );
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (details.localPosition.dx < constants.changePagePaddingThreshold) {
      if (!_isDeboucing) {
        _isDeboucing = true;
        Future.delayed(constants.debounceDuration, () {
          _isDeboucing = false;
        });
        if (_pageController.page! - 1 >= 0) {
          _pageController.animateToPage(
            (_pageController.page! - 1).toInt(),
            duration: constants.animateToPageDuration,
            curve: constants.animateToPageCurve,
          );
        }
      }
    } else if (details.localPosition.dx >
        MediaQuery.of(context).size.width -
            constants.changePagePaddingThreshold) {
      if (!_isDeboucing) {
        _isDeboucing = true;
        Future.delayed(constants.debounceDuration, () {
          _isDeboucing = false;
        });
        if (_pageController.page! + 1 <= 2) {
          _pageController.animateToPage(
            (_pageController.page! + 1).toInt(),
            duration: constants.animateToPageDuration,
            curve: constants.animateToPageCurve,
          );
        }
      }
    }
  }

  Widget _buildCandidate(Todo todo) {
    return TodoTile(
      key: ValueKey("TodoTile-${todo.id}"),
      todo: todo,
    );
  }

  Future<void> _showAddTodoModal() {
    String title = "";
    String description = "";
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return showModalBottomSheet(
      context: context,
      builder: (_) => Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                onSaved: (value) {
                  title = value ?? "";
                },
                validator: (value) =>
                    value != null && value.isEmpty ? 'Title is required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
                onSaved: (value) {
                  description = value ?? "";
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState != null &&
                      formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<TodoBloc>().add(
                          TodoEvent.add(
                            title,
                            description,
                            TodoStatus.todo,
                          ),
                        );
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
