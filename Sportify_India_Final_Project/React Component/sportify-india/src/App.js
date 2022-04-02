
import './App.css';
import { BrowserRouter,Route, Routes } from "react-router-dom";
import Piechart from './component/Piechart';
import Signin from './component/Signin';
import Report from './component/Report';
import Vendors from './component/Vendors';
function App() {
  return (
    <BrowserRouter>
    <div>
     <Piechart></Piechart>
     <Routes>
     <Route path="/" element={<Signin></Signin>} />
     <Route path="/Report" element={<Report></Report>} />
     <Route path="/Vendors" element={<Vendors></Vendors>} />
     </Routes>
    </div>
    </BrowserRouter>
  );
}

export default App;
