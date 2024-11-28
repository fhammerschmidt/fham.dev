module Styles = {
  open Emotion

  let container = css`
    padding: 0 20px 2vh;
    max-width: 640px;
    margin: 20px auto;
    display: flex;
    flex: 1;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  `
}

@react.component
let make = (~children) => <section className=Styles.container> {children} </section>
