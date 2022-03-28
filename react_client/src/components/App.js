import React from "react"
import './App.css';
import NavBar from "./NavBar";
import TodoApplication from './TodoApplication';
import ShoppingApplication from "./ShoppingApplication";

import { Route, Switch } from "react-router-dom"

function App() {
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
      </Switch>
    </div>
    
  );
}

export default App;

