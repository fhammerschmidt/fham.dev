open Emotion

let link = css`
  padding: 10px 0;
  font-size: 24;
  color: inherit;
  text-decoration: none;
  display: flex;
  flex-direction: column;
  & h3 span {
    position: relative;
  }
  @media (hover: hover) {
    :hover {
      & h3 span::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        height: 3;
        background-color: #000;
        transform-origin: 0 0;
      },
    },
  },
`
