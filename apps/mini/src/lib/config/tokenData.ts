import { Token, TokenId, Tokens } from './tokens'

export interface IToken extends Token {}
export const tokensList: IToken[] = Object.keys(Tokens).map((key) => {
  return Tokens[key as TokenId]
})
