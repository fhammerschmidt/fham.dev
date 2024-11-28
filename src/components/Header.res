module Styles = {
  open Emotion

  let container = css`
    display: flex;
    flex-direction: row;
    align-items: center;
    flex-grow: 1;
    justify-content: space-between;
    color: var(--text-color-light);
    padding: 20px;
    @media (max-width: 600px): {
      flex-direction: column;
      justify-content: center;
    },
  `
  let nav = css`
    display: flex;
    flex-direction: row;
    align-items: center;
  `
  let branding = css`
    display: flex;
    flex-direction: row;
    align-items: center;
    flex-grow: 1;
    text-decoration: none;
    color: inherit;
    @media (max-width: 600px): {
      flex-grow: 0;
      flex-direction: column;
      text-align: center;
      margin-bottom: 10px;
    },
  `
  let title = css`
    margin: 0;
    display: flex;
    flex-direction: column;
    font-weight: bold;
    font-size: 1rem;
    line-height: 1.2;
    color: var(--primary-color);
  `
  let activeLink = css`
    color: var(--primary-color);
    text-shadow: 0 0 5px #ff6b73;
  `
  let link = css`
    font-size: 1.25rem;
    font-weight: 700;
    padding: 10px 20px;
    text-decoration: none;
    color: inherit;
    :hover {${activeLink}}
  `
  let slash = css`         
    font-size: 2rem;
    user-select: none;
  `
}

@react.component
let make = () => {
  <header className=Styles.container>
    <Pages.Link href="/" className=Styles.branding>
      <Spacer height="10px" width="0" />
      <h1 className=Styles.title> {"fham.dev"->s} </h1>
    </Pages.Link>
    <Spacer height="20px" width="0" />
    <nav className=Styles.nav>
      <Pages.Link
        href="/blog" matchSubroutes=true className=Styles.link activeClassName=Styles.activeLink>
        {"Blog"->s}
      </Pages.Link>
      <div className=Styles.slash> {s("/")} </div>
      <Pages.Link
        href="/about" matchSubroutes=true className=Styles.link activeClassName=Styles.activeLink>
        {"About"->s}
      </Pages.Link>
    </nav>
  </header>
}
