import React from "react";
import { Link } from "react-router-dom";

const LandingPage = () => (
  <div className="splash-page">
    <div className="navbar">
      <img src={window.logo} alt="MemoAce Logo" className="splash-page-logo" />

      <div className="navbar-sessions">
        <Link to="/login">Log In</Link>
        <Link to="/signup">Sign Up</Link>
      </div>
    </div>

    <div className="splash-page-content">
      <h1>MEMOACE</h1>
      <h2>A Social Media Web Application</h2>
      <h3>In The Works</h3>
    </div>
  </div>
);

export default LandingPage;
