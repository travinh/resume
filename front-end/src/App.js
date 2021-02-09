import './App.css';
import React, {Component} from 'react';
// import ReactGA from 'react-ga';
import $ from 'jquery';

import Header from './Components/Header';
import Footer from './Components/Footer';
import About from './Components/About';
import Resume from './Components/Resume';
import Contact from './Components/Contact';
import Portfolio from './Components/Portfolio';

export default class App extends Component {

  constructor(props){
    super(props);
    this.state={
      foo: 'bar',
      resumeData:{}
    }
  };

  getResumeData(){
    $.ajax({
      url:'./resumeData.json',
      dataType:'json',
      cache: false,
      success: function(data){
        console.log("data 1: ",data);
        this.setState({resumeData: data});
      }.bind(this),
      error: function(xhr, status, err){
        console.log(err);
        alert(err);
      }
    });
    $.ajax({
      type: "GET",
      url:'http://localhost:3000/api/v1/mains/1',
      dataType:'json',
      cache: false,
      success: function(data){
        this.setState({resumeData2: data});
        
      }.bind(this),
      error: function(xhr, status, err){
        console.log(err);
        alert(err);
      }
    });
    $.ajax({
      type: "GET",
      url:'http://localhost:3000/api/v1/resumes/1',
      dataType:'json',
      cache: false,
      success: function(data){
        console.log("data 2: ",data);
        this.setState({resumeData3: data});
        
      }.bind(this),
      error: function(xhr, status, err){
        console.log(err);
        alert(err);
      }
    });


  }

  componentDidMount(){
    this.getResumeData();
  }

  // ReactGA.initialize('UA-110570651-1');
  // ReactGA.pageview(window.location.pathname);


  render() {
    console.log("Porfolio in app: ",this.state.resumeData.portfolio)
  
    return (
      <div className="App">
        <Header data={this.state.resumeData2}/>
        <About data={this.state.resumeData2}/>
        <Resume data={this.state.resumeData3}/>
        <Portfolio data={this.state.resumeData.portfolio}/>
        <Contact data={this.state.resumeData2}/>
        <Footer data={this.state.resumeData2}/>
      
      </div>
    )
  }
}


