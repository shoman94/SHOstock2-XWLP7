.class public abstract Lmyorg/bouncycastle/cms/CMSPBEKey;
.super Ljava/lang/Object;
.source "CMSPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private iterationCount:I

.field private password:[C

.field private salt:[B


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "PKCS5S2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getEncoded(Ljava/lang/String;)[B
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmyorg/bouncycastle/cms/CMSPBEKey;->iterationCount:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSPBEKey;->password:[C

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSPBEKey;->salt:[B

    return-object v0
.end method
