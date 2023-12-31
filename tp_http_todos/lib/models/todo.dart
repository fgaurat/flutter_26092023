class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  Todo(this.id, this.userId, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> m)
      : id = m['id'],
        userId = m['userId'],
        title = m['title'],
        completed = m['completed'];
}
