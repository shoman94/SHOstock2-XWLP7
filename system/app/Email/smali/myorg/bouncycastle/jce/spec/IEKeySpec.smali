.class public Lmyorg/bouncycastle/jce/spec/IEKeySpec;
.super Ljava/lang/Object;
.source "IEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lmyorg/bouncycastle/jce/interfaces/IESKey;


# instance fields
.field private privKey:Ljava/security/PrivateKey;

.field private pubKey:Ljava/security/PublicKey;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "IES"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivate()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    return-object v0
.end method
