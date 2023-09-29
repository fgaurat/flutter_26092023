Map getTodo(int id) {
  Map m = {
    "id": id,
    "userId": 2,
    "title": "Faire du Dart",
    "completed": false,
  };

  return m;
}

Future<Map> getAsyncTodo(int id) {
  Map m = {
    "id": id,
    "userId": 2,
    "title": "Faire du Dart",
    "completed": false,
  };
  var f = Future<Map>.delayed(Duration(seconds: 1), () => m);
  return f;
}

doTruc(Map todo) {
  print("dotruc");
  print(todo);
}

void main(List<String> args) async {
  var fTodo1 = getAsyncTodo(1);
  var fTodo2 = getAsyncTodo(2);
  var fTodo3 = getAsyncTodo(3);
  var fTodo4 = getAsyncTodo(4);

  List<Future<Map>> l = [fTodo1,fTodo2,fTodo3,fTodo4];

  List<Map> todos = await Future.wait(l);

  print(todos);
   
}

void main02(List<String> args) async {
  var todo = await getAsyncTodo(1);
  print(todo);
  todo = await getAsyncTodo(todo['id']+1);
  print(todo);
  todo = await getAsyncTodo(todo['id']+1);
  print(todo);
  todo = await getAsyncTodo(todo['id']+1);
  print(todo);
}

void main01(List<String> args) {
  // Sync
  var todo = getTodo(1);
  print(todo);

  //Async
  Future<Map> f = getAsyncTodo(1);
  // f.then(doTruc) ;

  f.then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  }).then((todo) {
    print(todo);
    return getAsyncTodo(todo['id'] + 1);
  });
}
