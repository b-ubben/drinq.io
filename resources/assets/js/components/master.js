class Master extends Component {
  render() {
    return (
      <div>
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

        <main className="container">
          {this.props.children}
        </main>
      </div>
    )
  }
}

export default Master;