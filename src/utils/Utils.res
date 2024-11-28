// This module is automatically opened.

// Shorter replacement for React.string
external s: string => React.element = "%identity"

let padLeft = value =>
  switch String.length(value) {
  | 1 => "0" ++ value
  | _ => value
  }

let getFormattedDateString = date => {
  let date = date->Date.fromString

  Date.getUTCFullYear(date)->Int.toString ++
  "/" ++
  (Date.getUTCMonth(date) + 1)->Int.toString->padLeft ++
  "/" ++
  Date.getUTCDate(date)->Int.toString->padLeft
}

let nbsp = "\u00A0"
