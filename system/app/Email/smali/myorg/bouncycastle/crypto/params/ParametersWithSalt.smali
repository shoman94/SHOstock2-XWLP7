.class public Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;
.source "ParametersWithSalt.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private salt:[B


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    return-object v0
.end method
