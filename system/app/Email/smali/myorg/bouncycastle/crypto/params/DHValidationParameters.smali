.class public Lmyorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 24
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 28
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    .line 30
    .local v0, other:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;
    iget v2, v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-ne v2, v3, :cond_0

    .line 34
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
