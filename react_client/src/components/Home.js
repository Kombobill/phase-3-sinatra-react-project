import React from "react";
import UserLogin from "./UserLogin";
import "./Home.css"

function Home ({ user, login, logout, error }) {
    return (
        <div>
            

            {(user.email != "") ? (
                <div className="welcome">
                    <br></br>
                    <h1>Welcome, <span>{user.username}</span> !</h1>
                    <img src={require("../assets/greeting.png")}/>
                    <br></br>
                    <button className="logout-button"onClick={logout}>Logout</button>
                </div>
            ) : (
                <UserLogin login={login} logout={logout} error={error}/>)}

        </div>
        
    )
}

export default Home