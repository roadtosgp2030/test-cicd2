import { Link, Route, Routes } from 'react-router-dom';
import Home from './screens/Home';
import About from './screens/About';

function App() {
  return (
    <div>
      <p>
        <Link to='/'>Home</Link> <Link to='/about'>About</Link>
      </p>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/about' element={<About />} />
      </Routes>
    </div>
  );
}

export default App;
