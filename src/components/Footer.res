module Styles = {
  open Emotion

  let footer = css`
    flex-shrink: 0;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
    background-color: #afafaf;
    opacity: 0.7;
  `
  let social = css`
    flex: 1;
    display: flex;
    justify-content: space-between;
    padding: 24px 20px 20px;
  `
  let iconLink = css`
    margin-right: 10px;
    padding: 10px;
    text-decoration: none;
    color: inherit;
  `
  let message = css`
    display: none;
    @media (min-width: 900px) {
      display: flex;
      align-items: center;
      justify-content: center;
      opacity: 0.8;
      font-weight: bold;
      color: var(--text-color-light);
    }
  `
  let copyright = css`
    display: block;
    padding-right: 20px;
    font-weight: bold;
    color: var(--text-color-light);
  `
  let rescript = css`
    padding: 3px 12px 0;
    transition: transform .2s;
    :hover {
      transform: scale(1.5);
    }
  `
  let spacer = css`
    @media (min-width: 500px) {
      flex: 1;
    }
  `
  let darkModeButton = css`         
    cursor: pointer;
    width: 2.5rem;
    height: 2.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border: none;
    background: none;
    outline: none;
  `
}

@react.component
let make = () => {
  let year = Date.make()->Date.getFullYear->Int.toString

  <footer className=Styles.footer>
    <div className=Styles.social>
      <div>
        <a className=Styles.iconLink href="https://github.com/fhammerschmidt">
          <Icon.GitHub />
        </a>
        <a className=Styles.iconLink href="https://x.com/fham_r">
          <Icon.X />
        </a>
        <a className=Styles.iconLink href="https://bsky.app/profile/fham.dev">
          <Icon.Bluesky />
        </a>
      </div>
    </div>
    <div className=Styles.message>
      {"Made with ❤️ and "->s}
      <span className=Styles.rescript>
        <a href="https://rescript-lang.org/">
          <Icon.ReScript />
        </a>
      </span>
      {"by Florian Hammerschmidt"->s}
    </div>
    <div className=Styles.spacer> {nbsp->s} </div>
    <div className=Styles.copyright> {`© ${year}`->s} </div>
  </footer>
}
