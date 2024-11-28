let className = Emotion.css`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex-grow: 1;
`

@react.component
let make = (~children) => <div className> {children} </div>
