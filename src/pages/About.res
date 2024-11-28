module Styles = {
  open Emotion

  let container = css`
    display: flex;
    flex-direction: column;
    align-items: center;
    flex-grow: 1;
    padding: 0 12px;
  `
  let imageContainer = css`
    padding-top: 20px;
    width: 30%;
    border-radius: 50;
    max-width: 150px;
    @media (max-width: 500px): {
      margin-top: 0;
      margin-left: 10px;
      border-radius: 30;
    },
  `
  let imageContents = css`
    padding-bottom: 100%;
    position: relative;
    overflow: hidden;
  `
  let image = css`
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: contain;
    object-position: 50% 50%;
    transform: translateZ(0);
    border-radius: 50%;
    @media (max-width: 500px): {
      margin-top: 0;
      border-radius: 20;
    },
  `
  let text = css`
    font-size: 1.25rem;
    line-height: 1.5;
  `
  let firstParagraph = css`
    margin-top: 0;
  `
  let inlineLink = css`
    font-weight: bold;
    color: inherit;
    &:hover: {
      color: green !important;
    }
  `
  let link = css`
    display:  block;
    font-weight: bold;
    color: inherit;
  `
}

@react.component
let make = () => {
  <Section>
    <div className=Styles.imageContainer>
      <div className=Styles.imageContents>
        <img
          className=Styles.image
          alt="Florian Hammerschmidt"
          src="https://avatars.githubusercontent.com/fhammerschmidt?size=400"
        />
      </div>
    </div>
    <Spacer height="40px" />
    <div className=Styles.text>
      <p className=Styles.firstParagraph>
        <strong> {`Servus!`->s} </strong>
      </p>
      <p className=Styles.firstParagraph>
        {`My name is Florian and I am from Vienna, Austria.`->s}
      </p>
      <p className=Styles.firstParagraph>
        {`I am a Senior Software Engineer at `->s}
        <a className=Styles.inlineLink href="https://cca.io" target="__blank"> {"cca.io"->s} </a>
        {`, where we build web and mobile apps for public safety and public transport companies. In these domains it is very important to have reliable and robust software, which is why we build our software with statically and soundly typed programming languages like ReScript.`->s}
        <Spacer />
        {"If you are interested in the ReScript programming language, please check out my "->s}
        <a className=Styles.inlineLink href="/blog"> {s("blog")} </a>
        {"."->s}
      </p>
    </div>
  </Section>
}
