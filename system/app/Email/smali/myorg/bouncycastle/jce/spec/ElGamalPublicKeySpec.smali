.class public Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;
.super Lmyorg/bouncycastle/jce/spec/ElGamalKeySpec;
.source "ElGamalPublicKeySpec.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
