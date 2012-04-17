.class public Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;
.super Ljava/lang/Object;
.source "GOST3410PrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
