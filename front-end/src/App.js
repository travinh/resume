import './App.css';
import React, {Component} from 'react';
// import ReactGA from 'react-ga';
// import $ from 'jquery';


export default class App extends Component {

  constructor(props){
    super(props);
    this.state={
      foo: 'bar',
      resumeData:{}
    }
  };


  // ReactGA.initialize('UA-110570651-1');
  // ReactGA.pageview(window.location.pathname);


  render() {
    return (
      <div className="App">
        <h1>hello</h1>
      
      </div>
    )
  }
}


