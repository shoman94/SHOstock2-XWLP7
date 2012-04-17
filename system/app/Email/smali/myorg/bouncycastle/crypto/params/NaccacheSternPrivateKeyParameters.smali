.class public Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;
.source "NaccacheSternPrivateKeyParameters.java"


# instance fields
.field private phi_n:Ljava/math/BigInteger;

.field private smallPrimes:Ljava/util/Vector;


# virtual methods
.method public getPhi_n()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->phi_n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSmallPrimes()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->smallPrimes:Ljava/util/Vector;

    return-object v0
.end method
