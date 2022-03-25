import React, {useState} from "react"
import TodoList from "./TodoList"
import {tasks, todoCategories} from "../data"
import "./TodoApplication.css";



function TodoApplication() {
  const [todos, setTodos] = useState(tasks)
  const [selectedCategory, setSelectedCategory] = useState("All")

  function handleDeleteTodo(text) {
    setTodos(todos.filter((element) => (element.title !== text)))
  }

  function handleCategorySelected(category) {
    setSelectedCategory(category)
  }

  function addNewTodo(newTodo) {
    setTodos([...todos, newTodo])
  }
  
  const selectedTodos = todos.filter((todo) => (todo.category === selectedCategory || selectedCategory === "All"))


  return (
    <div className="App">
      <h2>Todo List</h2>
      <TodoList onDeleteTodo={handleDeleteTodo} todos={selectedTodos} categories={todoCategories} selectedCategory={selectedCategory} onCategorySelected={handleCategorySelected} onNewTodoFormSubmit={addNewTodo}></TodoList>
      </div>

  );
}

export default TodoApplication;

// useEffect(() => {
//   fetch("http://localhost:4000/messages")
//     .then((r) => r.json())
//     .then((messages) => setMessages(messages));
// }, []);


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