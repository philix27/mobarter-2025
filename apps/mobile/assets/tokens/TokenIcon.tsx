import { memo } from 'react';
import CeloIcon from './CELO.svg';
import PUSOIcon from './PUSO.svg';
import USDCIcon from './USDC.svg';
import USDTIcon from './USDT.svg';
import axlEUROCIcon from './axlEUROC.svg';
import axlUSDCIcon from './axlUSDC.svg';
import cCOPIcon from './cCOP.svg';
import cEURIcon from './cEUR.svg';
import cGHSIcon from './cGHS.svg';
import cKESIcon from './cKES.svg';
import cREALIcon from './cREAL.svg';
import cUSDIcon from './cUSD.svg';
import eXOFIcon from './eXOF.svg';
import { Token, TokenId } from './tokens';
import { Image, ImageSourcePropType } from 'react-native';
import { TText, TView } from '@/components';

export const TokenIcons = {
  CeloIcon,
  cUSDIcon,
  USDCIcon,
  eXOFIcon,
  cREALIcon,
  cKESIcon,
  cGHSIcon,
  cEURIcon,
  cCOPIcon,
  axlUSDCIcon,
  axlEUROCIcon,
  USDTIcon,
  PUSOIcon,
};

interface Props {
  token?: Token | null;
  size?: 'xs' | 's' | 'm' | 'l';
}

function _TokenIcon({ token, size = 'm' }: Props) {
  const { actualSize, fontSize } = sizeValues[size];

  if (!token) {
    return (
      <div
        className="flex items-center justify-center bg-white border border-gray-200 rounded-full"
        style={{
          width: actualSize,
          height: actualSize,
        }}
      ></div>
    );
  }

  let imgSrc;
  if (token?.id === TokenId.CELO) imgSrc = CeloIcon;
  else if (token?.id === TokenId.cUSD) imgSrc = cUSDIcon;
  else if (token?.id === TokenId.cEUR) imgSrc = cEURIcon;
  else if (token?.id === TokenId.cREAL) imgSrc = cREALIcon;
  else if (token?.id === TokenId.USDC) imgSrc = USDCIcon;
  else if (token?.id === TokenId.USDT) imgSrc = USDTIcon;
  else if (token?.id === TokenId.axlUSDC) imgSrc = axlUSDCIcon;
  else if (token?.id === TokenId.axlEUROC) imgSrc = axlEUROCIcon;
  else if (token?.id === TokenId.eXOF) imgSrc = eXOFIcon;
  else if (token?.id === TokenId.cKES) imgSrc = cKESIcon;
  else if (token?.id === TokenId.PUSO) imgSrc = PUSOIcon;
  else if (token?.id === TokenId.cCOP) imgSrc = cCOPIcon;
  else if (token?.id === TokenId.cGHS) imgSrc = cGHSIcon;

  if (imgSrc) {
    return (
      <Image
        source={imgSrc}
        style={{ height: 40, width: 40, borderRadius: 20 }}
      />
      // <Image
      //   src={imgSrc}
      //   alt="" // Not using real alt because it looks strange while loading
      //   width={actualSize}
      //   height={actualSize}
      //   priority={true}
      // />
    );
  }

  return (
    <TView
      style={{
        width: actualSize,
        height: actualSize,
        backgroundColor: token.color || '#9CA4A9',
        borderRadius: 100,
        justifyContent: 'center',
        alignItems: 'center',
        display: 'flex',
      }}
    >
      <TText
        style={{
          fontSize,
          fontWeight: 600,
        }}
      >
        {token.symbol[0].toUpperCase()}
      </TText>
    </TView>
  );
}

const sizeValues = {
  xs: {
    actualSize: 22,
    fontSize: 13,
  },
  s: {
    actualSize: 30,
    fontSize: 15,
  },
  m: {
    actualSize: 40,
    fontSize: 18,
  },
  l: {
    actualSize: 46,
    fontSize: 20,
  },
};

export const TokenIcon = memo(_TokenIcon);
