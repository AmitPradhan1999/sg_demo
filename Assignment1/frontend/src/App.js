import React, { useEffect, useState } from "react";

function App() {
  const [message, setMessage] = useState("Loading...");

  useEffect(() => {
    fetch("http://localhost:8080/api/hello")
      .then((res) => res.text())
      .then((data) => setMessage(data))
      .catch(() => setMessage("Backend not reachable"));
  }, []);

  return (
    <div style={{ textAlign: "center", marginTop: "100px" }}>
      <h1>React + Spring Boot + PostgreSQL</h1>
      <h2>{message}</h2>
    </div>
  );
}

export default App;