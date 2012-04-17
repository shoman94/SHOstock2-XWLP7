.class public Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lmyorg/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
