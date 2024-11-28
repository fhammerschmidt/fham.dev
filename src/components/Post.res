module Styles = {
  open Emotion

  let container = css`
    max-width: 640px;
    margin: 20px auto;
    padding: 0 10px;
    width: 100%;
    flex-grow: 1;
  `
  let title = css`
    margin: 0;
    font-size: 48;
    margin-top: 50;
    margin-bottom: 10;
    line-height: 1.15;
  `
  let titlePlaceholder = css`
    width: 100%;
    height: 48;
    margin-top: 50;
    margin-bottom: 10;
    max-width: 440;
    background-color: rgba(0, 0, 0, 0.05);
  `
  let datePlaceholder = css`
    width: 100%;
    height: 18;
    margin-bottom: 50;
    max-width: 90;
    background-color: rgba(0, 0, 0, 0.05);
  `
  let bodyPlaceholder = css`
    margin-top: 40;
    width: 100%;
    height: 200;
    margin: 3px 0;
    background-color: rgba(0, 0, 0, 0.05);
  `
  let date = css`
    font-size: 14;
    opacity: 0.5;
    margin-bottom: 50;
  `
  let body = css`
    margin-top: 40px;
    font-size: 20;
    line-height: 1.5;
    a {
      color: var(--primary-color);;
    }
    img {
      max-width: 100%;
      height: auto;
      opacity: 0.0;
      transition: 300ms ease-out opacity;
    }
    pre {
      padding: 10px 20px;
      overflow-x: auto;
      webkit-overflow-scrolling: touch;
      font-size: 16;
      border-radius: 8;
    }
    code {
      font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
      font-size: 0.85em;
      line-height: 1.0;
    }
    table {width: 100%; text-align: center}
    table thead th {
      background-color: #000;
      color: #FFF;
      padding: 10px 0;
    }
    blockquote {
      opacity: 0.6;
      border-left: 4px solid;
      margin: 0;
      padding: 0 20px;
    }
    hr {
      border-color: rgba(0, 0, 0, 0.1);
    }
  `
}

@react.component
let make = (~post: Pages.item) => <>
  <Pages.Head>
    <title> {`${post.title} - fham.dev`->s} </title>
  </Pages.Head>
  <div className=Styles.container>
    <h1 className=Styles.title> {post.title->s} </h1>
    <div className=Styles.date>
      {post.date->Option.mapOr(React.null, str => str->getFormattedDateString->s)}
    </div>
    <article className=Styles.body dangerouslySetInnerHTML={"__html": post.body} />
  </div>
</>
