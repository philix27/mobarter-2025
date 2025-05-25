import { Token, TokenId, Tokens } from './tokens'

export const tokensList: Token[] = Object.keys(Tokens).map((key) => {
  return Tokens[key as TokenId]
})
