import React, { Component } from 'react'
import './App.css'

// $ is a shortcut for jQuery methods
import $ from 'jquery'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {bananasReceived: ""}
    this.getBananas = this.getBananas.bind(this)
  }
  getBananas() {
    $.ajax({
      url: "http://localhost:3000/api/bananas",
      type: "GET",
      context: this, // Allows us to use this.setState inside success
      success: function (result) {
        this.setState({bananasReceived: JSON.stringify(result)})
      }
    })
  }
  render() {
    return (
      <div className="App">
        <button
          onClick={this.getBananas}
          style={{marginTop: '25vh'}}
          >
          Get Bananas
        </button>
        <p>{this.state.bananasReceived}</p>
      </div>
    );
  }
}

export default App
