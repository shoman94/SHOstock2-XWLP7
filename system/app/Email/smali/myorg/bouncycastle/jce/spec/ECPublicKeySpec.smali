.class public Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lmyorg/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lmyorg/bouncycastle/math/ec/ECPoint;


# virtual methods
.method public getQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
