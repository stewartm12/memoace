import React from 'react'
import {Route, Routes, BrowserRouter} from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import LandingPage from "./launch/landing_page";
import SignupContainer from "./sessionForm/signup_container";
import LoginContainer from "./sessionForm/login_container"

const App = () => {
  return(
  <div className="background">
      <Routes>
        <Route path="/" element={<LandingPage />} />
        <Route path="/signup" element={<SignupContainer />} />
        <Route path="/login" element={<LoginContainer />} />
      </Routes>
  </div>
)};

export default App;