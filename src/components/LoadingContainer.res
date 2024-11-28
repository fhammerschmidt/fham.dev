module Styles = {
  open Emotion

  let container = css`
    padding: 0 10px;
    margin: 20px auto;
    width: 100%;
    flex-grow: 1;
  `
  let datePlaceholder = css`
    width: 100%;
    height: 18;
    margin: 3px 0;
    max-width: 90;
    background-color: rgba(0, 0, 0, 0.05);
  `
  let titlePlaceholder = css`
    width: 100%;
    height: 24;
    margin: 3px 0;
    max-width: 440;
    background-color: rgba(0, 0, 0, 0.05);
  `
}

@react.component
let make = () =>
  <div className=Styles.container ariaLabel="Loading" role="alert" ariaBusy=true>
    {Belt.Array.range(0, 6)
    ->Array.map(index =>
      <div className=CommonStyles.link key={index->Int.toString}>
        <div className=Styles.datePlaceholder />
        <div className=Styles.titlePlaceholder />
      </div>
    )
    ->React.array}
  </div>
