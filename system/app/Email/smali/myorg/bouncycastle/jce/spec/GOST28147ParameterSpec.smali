.class public Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;
.super Ljava/lang/Object;
.source "GOST28147ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private sBox:[B


# virtual methods
.method public getIV()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 55
    .local v0, tmp:[B
    iget-object v1, p0, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSbox()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    return-object v0
.end method
