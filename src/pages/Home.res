@react.component
let make = () => {
  let list = Pages.useCollection("blog")

  switch list {
  | NotAsked | Loading => <LoadingContainer />
  | Done(Error(_)) => <Pages.ErrorIndicator />
  | Done(Ok({items})) =>
    switch items[0] {
    | None => React.null
    | Some({slug}) => <BlogPost slug />
    }
  }
}
