import React, {useState, useEffect} from "react"
import TodoList from "./TodoList"
import "./TodoApplication.css";



function TodoApplication() {
  const [todos, setTodos] = useState([])
  const [selectedCategory, setSelectedCategory] = useState("All")
  const [todoCategories, setTodoCategories] = useState([])
  const [categoryNames, setCategoryNames] = useState([])

  useEffect(() => {
    fetch("http://localhost:9292/todos")
      .then((r) => r.json())
      .then(function(data) {
        
        setTodos(data)});
  }, []);

  useEffect(() => {
    fetch("http://localhost:9292/todo_categories")
      .then((r) => r.json())
      .then(function(data) {
        setTodoCategories(data)
        const categories_arr = data.map(e => e.name)
        categories_arr.unshift("All")
        setCategoryNames(categories_arr)});
  }, []);

  function handleDeleteTodo(key) {
    setTodos(todos.filter((element) => (element.id !== key)))
  }

  function handleCategorySelected(category) {
    setSelectedCategory(category)
  }

  function addNewTodo(newTodo) {
    setTodos([...todos, newTodo])
  }
  

  const selectedCategoryObj = todoCategories.find(obj => {
    return obj.name === selectedCategory
  })

  let selectedTodos = []
  if (selectedCategory === "All") {
    selectedTodos = todos
  } else {
    selectedTodos = todos.filter((todo) => 
    (todo.todo_category_id === selectedCategoryObj.id))
  }

  return (
    <div className="App">
      <h2>Todo List</h2>
      <TodoList onDeleteTodo={handleDeleteTodo} todos={selectedTodos} todoCategories={todoCategories} categoryNames={categoryNames} selectedCategory={selectedCategory} onCategorySelected={handleCategorySelected} onNewTodoFormSubmit={addNewTodo}></TodoList>
      </div>

  );
}

export default TodoApplication;


// fetch(`http://localhost:4000/messages/${id}`, {
//   method: "PATCH",
//   headers: {
//     "Content-Type": "application/json",
//   },
//   body: JSON.stringify({
//     body: messageBody,
//   }),
// })
//   .then((r) => r.json())
//   .then((updatedMessage) => onUpdateMessage(updatedMessage));
// }

// function handleDeleteClick() {
//   fetch(`http://localhost:4000/messages/${id}`, {
//     method: "DELETE",
//   });

//   onMessageDelete(id);
// }



// fetch("http://localhost:4000/messages", {
//   method: "POST",
//   headers: {
//     "Content-Type": "application/json",
//   },
//   body: JSON.stringify({
//     username: currentUser.username,
//     body: body,
//   }),
// })
//   .then((r) => r.json())
//   .then((newMessage) => {
//     onAddMessage(newMessage);
//     setBody("");
//   });
// }

// return (
// <form className="new-message" onSubmit={handleSubmit}>
//   <input
//     type="text"
//     name="body"
//     autoComplete="off"
//     value={body}
//     onChange={(e) => setBody(e.target.value)}
//   />
//   <button type="submit">Send</button>
// </form>
// );
// }