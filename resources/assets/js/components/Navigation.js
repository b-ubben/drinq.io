class Navigation extends Component {
  render(){
    return (
      <nav className="navigation bg-dark">
        <a href="/" className="navigation-logo">drinq</a>
        <a className="navigation-link">
          <div className="menu-logo">
            <div className="menu-logo-bars"></div>
            <div className="menu-logo-bars"></div>
            <div className="menu-logo-bars"></div>
          </div>
        </a>
      </nav>
    )
  }
}

export default Navigation;