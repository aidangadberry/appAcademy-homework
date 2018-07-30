import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      num1: "",
      num2: "",
      result: 0
    };
    this.setNum1 = this.setNum1.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num2 });
  }

  performOperation(operator) {
    const num1 = this.state.num1 === "" ? 0 : this.state.num1;
    const num2 = this.state.num2 === "" ? 0 : this.state.num2;
    switch (operator) {
      case "+":
        this.setState({ result: num1 + num2 })
        break;
      case "-":
        this.setState({ result: num1 - num2 })
        break;
      case "*":
        this.setState({ result: num1 * num2 })
        break;
      case "/":
        this.setState({ result: num1 / num2 })
        break;
      default:

    }
  }

  clearFields() {
    this.setState({ num1: "", num2: "", result: 0 });
  }

  render(){
    return (
      <div>
        <input onChange={(e) => this.setNum1(e)} value={this.state.num1}></input>
        <input onChange={(e) => this.setNum2(e)} value={this.state.num2}></input>
        <button onClick={() => this.performOperation("+")}>+</button>
        <button onClick={() => this.performOperation("-")}>-</button>
        <button onClick={() => this.performOperation("*")}>&times;</button>
        <button onClick={() => this.performOperation("/")}>&divide;</button>
        <br/>
        <button onClick={() => this.clearFields()}>Clear</button>
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
