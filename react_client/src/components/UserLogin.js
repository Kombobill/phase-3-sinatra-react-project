import React, {useState} from "react";


function UserLogin ({ login, error }) {

    const [details, setDetails] = useState({email: "", password:""})

    function handleSubmit(event) {
        event.preventDefault()
        console.log(details)

        login(details)

        // let result = await fetch("http://localhost:9292/users", {
        //     method: "POST",
        //     headers: {
        //       "Content-Type": "application/json",
        //     },
        //     body: JSON.stringify({
        //       email: newEmail,
        //       password: newPassword
        //     }),
        //   })
        //     .then((r) => r.json())
        //     .then((loginData) => {
                // onNewTodoFormSubmit(newTodo);
                // setNewItemTitle("");
                // console.log(loginData)
            // };


    }

  



    return (
        

        <div>
            <h2>Sign into Account</h2>
            {(error !== "") ? (<div className="error">{error}</div>) : ""}
            <form onSubmit = {handleSubmit} className="new-login">
               <label><input type="email" onChange={(e)=>setDetails({...details, email: e.target.value})} value={details.email} placeholder="email"></input></label>
                <input type="password" onChange={(e)=>setDetails({...details, password: e.target.value})} value={details.password} placeholder="password"></input><br></br><br></br>
                <input type="submit" value="Log in"/>
            </form>
        </div>
    )
}

export default UserLogin;