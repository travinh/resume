import './App.css';
import React, {Component} from 'react';
// import ReactGA from 'react-ga';
import $ from 'jquery';


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
        this.setState({resumeData: data});
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
    return (
      <div className="App">
        <Header data={this.state.resumeData.main}/>
        <About data={this.state.resumeData.main}/>
        <Resume data={this.state.resumeData.resume}/>
        <Portfolio data={this.state.resumeData.portfolio}/>
        <Contact data={this.state.resumeData.main}/>
        <Footer data={this.state.resumeData.main}/>
      
      </div>
    )
  }
}


