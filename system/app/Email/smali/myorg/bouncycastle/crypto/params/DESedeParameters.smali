.class public Lmyorg/bouncycastle/crypto/params/DESedeParameters;
.super Lmyorg/bouncycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "key"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    .line 13
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lmyorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public static isWeakKey([BII)Z
    .locals 2
    .parameter "key"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 26
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 27
    invoke-static {p0, v0}, Lmyorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 32
    :goto_1
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
