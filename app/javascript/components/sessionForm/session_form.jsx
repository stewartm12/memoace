import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import { login } from "../../actions/session_actions";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state={
      username: "",
      email: "",
      password: "",
      passwordConfirmation: "",
    }
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update() {
    return e => this.setState({
      [field]: e.currentTarget.value
    })
  }

  handleSubmit(e) {

  }

  render() {
    let signup = (
      <div className="session-container splash-page">
        <div className="navbar">
          <img
            src={window.logo}
            alt="MemoAce Logo"
            className="splash-page-logo"
          />

          <div className="navbar-sessions">
            <Link to="/login">Log In</Link>
          </div>
        </div>

        <div className="session-form">
          <form onSubmit={this.handleSubmit}>
            <h1>Sign Up</h1>
            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.update("username")}
              className="session-input"
            />
            <br />
            <input
              type="text"
              placeholder="Email"
              value={this.state.email}
              onChange={this.update("email")}
              className="session-input"
            />
            <br />
            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update("password")}
              className="session-input"
              autoComplete="on"
            />
            <br />
            <input
              type="password"
              placeholder="Password Confirmation"
              value={this.state.passwordConfirmation}
              onChange={this.update("passwordConfirmation")}
              className="session-input"
              autoComplete="on"
            />
            <br />
            <input className="session-submit" type="submit" value="Submit" />
          </form>
        </div>
      </div>
    );

    let login = (
      <div className="session-container splash-page">
        <div className="navbar">
          <img
            src={window.logo}
            alt="MemoAce Logo"
            className="splash-page-logo"
          />

          <div className="navbar-sessions">
            <Link to="/signup">Sign Up</Link>
          </div>
        </div>

        <div className="session-form">
          <form onSubmit={this.handleSubmit}>
            <h1>Log In</h1>
            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.update("username")}
              className="session-input"
              autoComplete="on"
            />
            <br />
            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update("password")}
              className="session-input"
              autoComplete="on"
            />
            <br />
            <input className="session-submit" type="submit" value="Submit" />
          </form>
        </div>
      </div>
    );

    return this.props.formType === "login" ? (login) : (signup);
  }
}

export default SessionForm;