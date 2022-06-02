import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      num1: "",
      num2: "",
      result: 0
    };
    this.setNum1 = this.setNum1.bind(this); //refer to Props and state (how state is set)
    this.setNum2 = this.setNum2.bind(this); //refer to Props and state (how state is set)
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  //refer to Props and state (how state is set)
  setNum1(e) {
    this.setState({ num1: e.currentTarget.value });
  }

  //refer to Props and state (how state is set)
  setNum2(e) {
    this.setState({ num2: e.currentTarget.value });
  }

  add(e) {
    e.preventDefault();
    let result = parseInt(this.state.num1) + parseInt(this.state.num2); // need to parseInt because the numbers are strings to begin with
    this.setState({result});
  }

  subtract(e) {
    e.preventDefault();
    let result = parseInt(this.state.num1) - parseInt(this.state.num2);
    this.setState({result});
  }

  multiply(e) {
    e.preventDefault();
    let result = parseInt(this.state.num1) * parseInt(this.state.num2);
    this.setState({result});
  }

  divide(e) {
    e.preventDefault();
    let result = parseInt(this.state.num1) / parseInt(this.state.num2);
    this.setState({result});
  }

  clear(e) {
    e.preventDefault();
    let num1 = "";
    let num2 = "";
    let result = 0;
    this.setState({num1});
    this.setState({num2});
    this.setState({result});
  }

  render(){
    let {result, num1, num2} = this.state;
    return (
      <div>
        <h1>{result}</h1>
        <input onChange={this.setNum1} value={num1}></input>
        <input onChange={this.setNum2} value={num2}></input>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>clear</button>
      </div>
    );
  }
}

export default Calculator;
