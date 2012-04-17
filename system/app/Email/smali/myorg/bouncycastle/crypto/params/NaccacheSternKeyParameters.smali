.class public Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NaccacheSternKeyParameters.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field lowerSigmaBound:I

.field private n:Ljava/math/BigInteger;


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLowerSigmaBound()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->lowerSigmaBound:I

    return v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method
