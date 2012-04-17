.class public Lmyorg/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lmyorg/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# virtual methods
.method public getAssociatedText()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-object v0
.end method

.method public getKey()Lmyorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/AEADParameters;->key:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    return-object v0
.end method
