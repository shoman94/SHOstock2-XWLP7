.class public Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;
.source "RSABlindingParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private publicKey:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;


# virtual methods
.method public getBlindingFactor()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/RSABlindingParameters;->publicKey:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method
