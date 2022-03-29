import React, {useState, useEffect} from "react";
import './App.css';
import NavBar from "./NavBar";
import TodoApplication from './TodoApplication';
import ShoppingApplication from "./ShoppingApplication";
import Home from "./Home"

import { Route, Switch } from "react-router-dom"


function App() {

  const [user, setUser] = useState({
    username: "",
    email: "",
    budget: ""})

  const [error, setError] = useState("")
  const [retrievedData, setRetrievedData] = useState([])


  function login(details) {
    fetch("http://localhost:9292/users")
      .then((r) => r.json())
      .then(function(result) {
        setRetrievedData(result)
        });
  
      // const record = retrievedData.find(e => (e.email == details.email))
      // console.log(`retrieved record: ${record}`)
    
      //   // console.log(record.password == details.password ? "password match!" : "wrong password!")

      // if (record.password == details.password ) {setUser({
      //       email: details.email,
      //       username: record.username,
      //       budget: record.budget
      //     });}
      
      // if (record.password != details.password) {setError("Details do not match!")}
      // console.log(record)

          
  
  }
  

  function logout(){
    setUser({
      username: "",
      email: "",
      budget: ""});}

  return (
    <div className="App">
     
      <h1>List Metaverse</h1>
      <NavBar />
       <Switch>
          <Route path="/todo-list">
            <TodoApplication />
          </Route>

          <Route path="/shopping-list">
            <ShoppingApplication/>
          </Route>

          <Route path="/">
            <Home user={user} error={error} login={login} logout={logout}/>
          </Route>
      </Switch>
    </div>
    
  );
}

export default App;

