import { Routes, Route } from 'react-router-dom'
import Home from './pages/Home'

const Router = () => (
  <Routes>
    <Route path="/" element={<Home />} />
  </Routes>
)

const App = () => <Router />

export default App
