.class public Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;
.super Lmyorg/bouncycastle/jce/spec/ElGamalKeySpec;
.source "ElGamalPrivateKeySpec.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
