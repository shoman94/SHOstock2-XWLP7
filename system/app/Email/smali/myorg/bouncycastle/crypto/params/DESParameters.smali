.class public Lmyorg/bouncycastle/crypto/params/DESParameters;
.super Lmyorg/bouncycastle/crypto/params/KeyParameter;
.source "DESParameters.java"


# static fields
.field private static DES_weak_keys:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        0xe0t
        0xe0t
        0xe0t
        0xe0t
        0xf1t
        0xf1t
        0xf1t
        0xf1t
        0xfet
        0xfet
        0xfet
        0xfet
        0xfet
        0xfet
        0xfet
        0xfet
        0x1t
        0xfet
        0x1t
        0xfet
        0x1t
        0xfet
        0x1t
        0xfet
        0x1ft
        0xe0t
        0x1ft
        0xe0t
        0xet
        0xf1t
        0xet
        0xf1t
        0x1t
        0xe0t
        0x1t
        0xe0t
        0x1t
        0xf1t
        0x1t
        0xf1t
        0x1ft
        0xfet
        0x1ft
        0xfet
        0xet
        0xfet
        0xet
        0xfet
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0xe0t
        0xfet
        0xe0t
        0xfet
        0xf1t
        0xfet
        0xf1t
        0xfet
        0xfet
        0x1t
        0xfet
        0x1t
        0xfet
        0x1t
        0xfet
        0x1t
        0xe0t
        0x1ft
        0xe0t
        0x1ft
        0xf1t
        0xet
        0xf1t
        0xet
        0xe0t
        0x1t
        0xe0t
        0x1t
        0xf1t
        0x1t
        0xf1t
        0x1t
        0xfet
        0x1ft
        0xfet
        0x1ft
        0xfet
        0xet
        0xfet
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        0xfet
        0xe0t
        0xfet
        0xe0t
        0xfet
        0xf1t
        0xfet
        0xf1t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "key"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 8
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DES key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method

.method public static isWeakKey([BI)Z
    .locals 6
    .parameter "key"
    .parameter "offset"

    .prologue
    const/16 v5, 0x8

    .line 63
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v5, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key material too short."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    .line 68
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 69
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    sget-object v3, Lmyorg/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_2
    const/4 v2, 0x1

    .line 76
    .end local v1           #j:I
    :goto_2
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static setOddParity([B)V
    .locals 5
    .parameter "bytes"

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 87
    aget-byte v0, p0, v1

    .line 88
    .local v0, b:I
    and-int/lit16 v2, v0, 0xfe

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #b:I
    :cond_0
    return-void
.end method
