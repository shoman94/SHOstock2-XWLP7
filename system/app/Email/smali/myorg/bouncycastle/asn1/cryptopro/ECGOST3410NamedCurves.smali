.class public Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;
.super Ljava/lang/Object;
.source "ECGOST3410NamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static final params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 18
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    .line 19
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    .line 20
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    .line 23
    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, mod_p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, mod_q:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "166"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 33
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v4, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v5, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "1"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 44
    .local v1, ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #mod_p:Ljava/math/BigInteger;
    const-string v4, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v2       #mod_p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #mod_q:Ljava/math/BigInteger;
    const-string v4, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v3       #mod_q:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "166"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 57
    .restart local v0       #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v4, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v5, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "1"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 68
    .restart local v1       #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #mod_p:Ljava/math/BigInteger;
    const-string v4, "57896044618658097711785492504343953926634992332820282019728792003956564823193"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v2       #mod_p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #mod_q:Ljava/math/BigInteger;
    const-string v4, "57896044618658097711785492504343953927102133160255826820068844496087732066703"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v3       #mod_q:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "57896044618658097711785492504343953926634992332820282019728792003956564823190"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "28091019353058090096996979000309560759124368558014865957655842872397301267595"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 82
    .restart local v0       #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v4, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v5, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "28792665814854611296992347458380284135028636778229113005756334730996303888124"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2, v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 93
    .restart local v1       #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #mod_p:Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v2       #mod_p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #mod_q:Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v3       #mod_q:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "32858"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 106
    .restart local v0       #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v4, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v5, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2, v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 111
    .restart local v1       #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #mod_p:Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v2       #mod_p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #mod_q:Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v3       #mod_q:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "32858"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 122
    .restart local v0       #curve:Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v4, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v5, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2, v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 133
    .restart local v1       #ecParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-A"

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-B"

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-C"

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-XchA"

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-XchB"

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-A"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-B"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-C"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-XchA"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v4, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-XchB"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 2
    .parameter "name"

    .prologue
    .line 178
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 180
    .local v0, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v0, :cond_0

    .line 181
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 184
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1
    .parameter "oid"

    .prologue
    .line 166
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method

.method public static getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 191
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1
    .parameter "name"

    .prologue
    .line 195
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
