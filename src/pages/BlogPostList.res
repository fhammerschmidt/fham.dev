module Styles = {
  open Emotion

  let date = css`
    font-size: 18;
    opacity: 0.5;
  `
  let title = css`
    font-weight: bold;
    font-size: 1em;
    margin: 0;
    line-height: 1.2;
  `
  let bigTitle = css`
    margin: 20px 10px;
    font-size: 4rem;
    font-weight: bold;
    @media (max-width: 450px): {
      font-size: 2rem;
    }
  `
}

@react.component
let make = () => {
  let list = Pages.useCollection("blog")

  switch list {
  | NotAsked
  | Loading =>
    <LoadingContainer />
  | Done(Ok({items: list})) =>
    <>
      <Pages.Head>
        <title> {"Blog - fham.dev"->s} </title>
      </Pages.Head>
      <Section>
        <h2 className=Styles.bigTitle> {"Blog"->s} </h2>
        {list
        ->Array.map(item =>
          <Pages.Link
            className=CommonStyles.link key=item.slug href={"/blog/" ++ (item.slug ++ "/")}>
            {<>
              <div className=Styles.date>
                {item.date->Option.mapOr(React.null, str => str->getFormattedDateString->s)}
              </div>
              <h3 className=Styles.title>
                <span> {item.title->s} </span>
              </h3>
            </>}
          </Pages.Link>
        )
        ->React.array}
      </Section>
    </>
  | Done(Error(_)) => <Pages.ErrorIndicator />
  }
}
