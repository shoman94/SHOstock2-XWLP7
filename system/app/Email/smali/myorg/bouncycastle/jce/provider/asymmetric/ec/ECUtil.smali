.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .locals 6
    .parameter "k"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39
    new-array v0, v2, [I

    .line 41
    .local v0, res:[I
    array-length v1, p0

    if-ne v1, v3, :cond_0

    .line 42
    aget v1, p0, v5

    aput v1, v0, v5

    .line 78
    :goto_0
    return-object v0

    .line 44
    :cond_0
    array-length v1, p0

    if-eq v1, v2, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_3

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_3

    .line 49
    aget v1, p0, v5

    aput v1, v0, v5

    .line 50
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_2

    .line 51
    aget v1, p0, v3

    aput v1, v0, v3

    .line 52
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 54
    :cond_2
    aget v1, p0, v4

    aput v1, v0, v3

    .line 55
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 57
    :cond_3
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_5

    .line 58
    aget v1, p0, v3

    aput v1, v0, v5

    .line 59
    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_4

    .line 60
    aget v1, p0, v5

    aput v1, v0, v3

    .line 61
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 63
    :cond_4
    aget v1, p0, v4

    aput v1, v0, v3

    .line 64
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0

    .line 67
    :cond_5
    aget v1, p0, v4

    aput v1, v0, v5

    .line 68
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_6

    .line 69
    aget v1, p0, v5

    aput v1, v0, v3

    .line 70
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 72
    :cond_6
    aget v1, p0, v3

    aput v1, v0, v3

    .line 73
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 110
    instance-of v0, p0, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    move-object v6, p0

    .line 111
    check-cast v6, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    .line 112
    .local v6, k:Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v6}, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 114
    .local v7, s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v7, :cond_0

    .line 115
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 118
    :cond_0
    new-instance v8, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v6}, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v8, v9, v0}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v8

    .line 122
    .end local v6           #k:Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v7           #s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    instance-of v0, p0, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    move-object v6, p0

    .line 84
    check-cast v6, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    .line 85
    .local v6, k:Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v6}, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 87
    .local v8, s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v8, :cond_0

    .line 88
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 90
    new-instance v9, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    check-cast v6, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    .end local v6           #k:Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    .line 100
    :goto_0
    return-object v0

    .line 94
    .restart local v6       #k:Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;
    :cond_0
    new-instance v9, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v6}, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_0

    .line 97
    .end local v6           #k:Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v8           #s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v7, p0

    .line 98
    check-cast v7, Ljava/security/interfaces/ECPublicKey;

    .line 99
    .local v7, pubKey:Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 100
    .restart local v8       #s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v9, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_0

    .line 105
    .end local v7           #pubKey:Ljava/security/interfaces/ECPublicKey;
    .end local v8           #s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 161
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 164
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    if-nez v0, :cond_1

    .line 169
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_1
    if-nez v0, :cond_2

    .line 172
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_2
    return-object v0
.end method

.method public static getNamedCurveByOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .parameter "oid"

    .prologue
    .line 145
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 147
    .local v0, params:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_1

    .line 148
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 153
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 157
    :cond_1
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 128
    .local v0, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_2

    .line 129
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 133
    :cond_0
    if-nez v0, :cond_1

    .line 134
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 136
    :cond_1
    if-nez v0, :cond_2

    .line 137
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 141
    :cond_2
    return-object v0
.end method
