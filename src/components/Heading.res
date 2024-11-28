let className = Emotion.css`
    margin: 20px 0;
    fontSize: 2.625rem;
    fontWeight: bold;
    textAlign: center;
    @media (max-width: 450px): {
      fontSize: 2rem;
    }
  `

@react.component
let make = (~text, ~level=2, ()) => <div className role="heading" ariaLevel=level> {text->s} </div>
