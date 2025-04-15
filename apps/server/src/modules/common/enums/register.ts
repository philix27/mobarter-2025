import { registerEnumType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";


export enum OtpPurpose {
    SignUp,
    Verification,
}

export enum OrderParticipant {
  MERCHANT = "MERCHANT",
  CUSTOMER = "CUSTOMER"
}

registerEnumType(OrderParticipant, {
    name: "OtpPurpose",
});
registerEnumType(OtpPurpose, {
  name: 'OtpPurpose',
});
registerEnumType($Enums.Country, {
    name: "country",
});

registerEnumType($Enums.ChainType, {
    name: "ChainType",
});

registerEnumType($Enums.BankName, {
    name: "BankName",
});

registerEnumType($Enums.CredentialsStatus, {
    name: "CredentialsStatus",
});

registerEnumType($Enums.CurrencyCrypto, {
    name: "CurrencyCrypto",
});

registerEnumType($Enums.CurrencyFiat, {
    name: "CurrencyFiat",
});

registerEnumType($Enums.MerchantStatus, {
    name: "MerchantStatus",
});

registerEnumType($Enums.OrderActions, {
    name: "OrderActions",
});

registerEnumType($Enums.OrderStatus, {
    name: "OrderStatus",
});

registerEnumType($Enums.TradeType, {
    name: "TradeType",
});

registerEnumType($Enums.UserRole, {
    name: "UserRole",
});
registerEnumType($Enums.AdvertStatus, {
    name: "AdvertStatus",
});