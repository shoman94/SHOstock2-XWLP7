.class public Lmyorg/bouncycastle/jce/ECGOST3410NamedCurveTable;
.super Ljava/lang/Object;
.source "ECGOST3410NamedCurveTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterSpec(Ljava/lang/String;)Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 24
    .local v8, ecP:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    if-nez v8, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 32
    :cond_0
    if-nez v8, :cond_1

    .line 36
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v7

    .line 28
    .local v7, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 36
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method
