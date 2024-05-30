import "package:http/http.dart" as http;
import "dart:convert" as convert;

Future<void> main() async {
  // Futures := like promises in JS
  // can have uncompleted or completed state

  var post = fetchPost();
  post.then((p) => {print(p.title)});
  post.then((p) {
    print(p.userId);
  });

  final poste = await fetchPost();
  print(poste.title);

  // final res =
  //     await http.get(Uri.https("jsonplaceholder.typicode.com", "/todos/1"));

  // if (res.statusCode == 200) {

  //   var jsonData = convert.jsonDecode(res.body) as Map<String, dynamic>;
  //   print(jsonData["userId"]);
  // }

  final newPost = await fetchTodo();

  print(newPost.title);
  // print(res.statusCode);
}

Future<Post> fetchPost() {
  return Future.delayed(Duration(seconds: 3), () {
    return Post("Post", 1);
  });
}

Future<Todo> fetchTodo() async {
  var res =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "/todos/1"));

  Map<String, dynamic> jsonBody = convert.jsonDecode(res.body);

  return Todo(jsonBody["title"], jsonBody["userId"], jsonBody["id"],
      jsonBody["completed"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}

class Todo {
  String title;
  int userId;
  int id;
  bool completed;

  Todo(this.title, this.userId, this.id, this.completed);
}
