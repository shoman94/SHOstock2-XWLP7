.class public Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;
.super Ljava/lang/Object;
.source "GOST3410PublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
