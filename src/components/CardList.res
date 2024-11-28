module Card = {
  type t = {
    image: string,
    name: string,
    description?: string,
    url?: string,
  }

  module Styles = {
    open Emotion
    let container = css`
      flex-shrink: 0;
      display: flex;
      flex-direction: column;
      align-items: stretch;
      text-decoration: none;
      padding: 20px 20px 20px 0;
      color: inherit;
    `
    let imageContainer = css`
      padding: 10px;
      border: 0.5px dashed;
      border-radius: 50;
    `
    let image = css`
      width: 128;
      height: 128;
      border-radius: 40;
      display: block;
      transform: translateZ(0);
    `
    let text = css`
      text-align: center;
      font-size: 18;
      padding-top: 10px;
    `
    let textSmall = css`
      text-align: center;
      font-size: 14;
    `
  }

  @react.component
  let make = (~card, ()) => {
    let contents =
      <>
        <div className=Styles.imageContainer>
          <img className=Styles.image src=card.image alt="" />
        </div>
        <div className=Styles.text> {card.name->s} </div>
        {switch card.description {
        | Some(description) => <div className=Styles.textSmall> {description->s} </div>
        | None => React.null
        }}
      </>
    switch card.url {
    | Some(href) => <a href className=Styles.container> contents </a>
    | None => <div className=Styles.container> contents </div>
    }
  }
}

module Styles = {
  open Emotion
  let root = css`
    display: block;
  `
  let container = css`
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    max-width: 1024 / 2;
  `
}

@react.component
let make = (~cards, ()) =>
  <div className=Styles.root>
    <div className=Styles.container>
      {cards->Array.map(((id, card)) => <Card key=id card />)->React.array}
    </div>
  </div>
