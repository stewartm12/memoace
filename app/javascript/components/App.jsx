import React from 'react'
import {Route, Routes} from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import LandingPage from "./launch/landing_page"

const App = () => (
  <div className="background">
    <Routes>
      <Route path="/" element={<LandingPage/>}>
      </Route>
    </Routes>
  </div>
)

export default App;