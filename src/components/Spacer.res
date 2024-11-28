@react.component
let make = (~width="10px", ~height="10px", ()) => {
  let className = Emotion.css`
    width: ${width}; 
    height: ${height}; 
    flexShrink: 0;
  `

  <div className />
}
