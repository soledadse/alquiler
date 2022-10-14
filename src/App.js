import React from "react";
import "./App.css";
import { Button, Card, Form } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';


function Todo({ todo, index}) {
  return (
    <div
      className="todo"
      
    >
      <span >{todo.codigo}</span>
      <span >{todo.tipo}</span>
      <span >{todo.marca}</span>
      <span >{todo.procesador}</span>
      <span >{todo.generacion}</span>
     
    </div>
  );
}

function FormTodo({ consultarEmpresa }) {
  const [value, setValue] = React.useState("");

  const handleSubmit = e => {
    e.preventDefault();
    if (!value) return;
    
    consultarEmpresa(value);
    //setValue("");
  };

  return (
    <Form onSubmit={handleSubmit}> 
    <Form.Group>
      <Form.Label><b>Empresa /Cliente</b></Form.Label>
      <Form.Control type="text" className="input" value={value} onChange={e => setValue(e.target.value)} placeholder="" />
    </Form.Group>
    <Button variant="primary mb-3" type="submit">
      Consultar
    </Button>
  </Form>
  );
}

function App() {
  
  const [todos, setTodos] = React.useState([
    {
      text: "This is a sampe todo",
      isDone: false
    }
  ]);

  

const [rowData, setRowData] = React.useState([]);
 

 const consultarEmpresa = (empresa) =>{
  fetch('http://redodiwo.com/alquiler/?code='+empresa)
  .then(response=>{
    if (!response.ok) {
      throw new Error(response.statusText)
    }
    return response.json()
  })
  .then(result => setRowData(result.data));
  
 }

  

  return (
    <div className="app">
      <div className="container">
        <h1 className="text-center mb-4">Lista de Equipos por cliente</h1>
        
        <FormTodo consultarEmpresa={consultarEmpresa} />
        <div>
        <h5>Resultados: {rowData && rowData.length}</h5>
          <card>
            <Card.Body>
            <div className="todo">
            <span >Codigo</span>
            <span >tipo</span>
            <span >Marca</span>
            <span >Procesador</span>
            <span >Generacion</span>
            </div>
            </Card.Body>
          </card>
       
          {rowData && rowData.map((todo, index) => (
            <Card>

              <Card.Body>
                <Todo
                key={index}
                index={index}
                todo={todo}
               
                />
              </Card.Body>
            </Card>
          ))}
         
        </div>
      </div>
    </div>
  );
}

export default App;