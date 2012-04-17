.class abstract Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInts([B)[I
    .locals 4
    .parameter "bs"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 8
    new-array v0, v3, [I

    .line 9
    .local v0, us:[I
    invoke-static {p0, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    .line 10
    const/4 v1, 0x1

    invoke-static {p0, v3}, Lmyorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 11
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 12
    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lmyorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 13
    return-object v0
.end method

.method static multiplyP([I)V
    .locals 4
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x3

    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 19
    .local v0, lsb:Z
    :goto_0
    invoke-static {p0}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    .line 20
    if-eqz v0, :cond_0

    .line 23
    aget v2, p0, v1

    const/high16 v3, -0x1f00

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 25
    :cond_0
    return-void

    .end local v0           #lsb:Z
    :cond_1
    move v0, v1

    .line 18
    goto :goto_0
.end method

.method static multiplyP8([I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 28
    const/16 v0, 0x8

    .local v0, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 28
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method static shiftRight([B)V
    .locals 4
    .parameter "block"

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, i:I
    const/4 v1, 0x0

    .line 37
    .local v1, bit:I
    :goto_0
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 38
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 44
    return-void

    .line 42
    :cond_0
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    .line 43
    goto :goto_0
.end method

.method static shiftRight([I)V
    .locals 4
    .parameter "block"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, i:I
    const/4 v1, 0x0

    .line 50
    .local v1, bit:I
    :goto_0
    aget v0, p0, v2

    .line 51
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    aput v3, p0, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    shl-int/lit8 v1, v0, 0x1f

    .line 56
    goto :goto_0
.end method

.method static xor([B[B)V
    .locals 3
    .parameter "block"
    .parameter "val"

    .prologue
    .line 60
    const/16 v0, 0xf

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 61
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method static xor([I[I)V
    .locals 3
    .parameter "block"
    .parameter "val"

    .prologue
    .line 66
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 67
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
