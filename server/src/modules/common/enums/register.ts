import { registerEnumType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

export enum OtpPurpose {
    SignUp,
    Verification,
}

registerEnumType(OtpPurpose, {
    name: "OtpPurpose",
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

registerEnumType($Enums.CurrencyName, {
    name: "CurrencyName",
});

