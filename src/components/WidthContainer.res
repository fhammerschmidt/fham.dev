let className = Emotion.css`
    width: 100%;
    margin: 0 auto;
    padding: 10px;
    max-width: 1024;
    position: relative;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    align-items: stretch;
  `

@react.component
let make = (~children) => {
  <div className> {children} </div>
}
