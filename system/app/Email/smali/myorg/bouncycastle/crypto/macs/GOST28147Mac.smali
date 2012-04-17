.class public Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;
.super Ljava/lang/Object;
.source "GOST28147Mac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private S:[B

.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private firstStep:Z

.field private mac:[B

.field private macSize:I

.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    .line 24
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    .line 36
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 40
    return-void

    .line 24
    nop

    :array_0
    .array-data 0x1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data
.end method

.method private CM5func([BI[B)[B
    .locals 4
    .parameter "buf"
    .parameter "bufOff"
    .parameter "mac"

    .prologue
    .line 139
    array-length v2, p1

    sub-int/2addr v2, p2

    new-array v1, v2, [B

    .line 141
    .local v1, sum:[B
    const/4 v2, 0x0

    array-length v3, p3

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-eq v0, v2, :cond_0

    .line 144
    aget-byte v2, v1, v0

    aget-byte v3, p3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v1
.end method

.method private bytesToint([BI)I
    .locals 3
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 126
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private generateWorkingKey([B)[I
    .locals 5
    .parameter "userKey"

    .prologue
    const/16 v4, 0x8

    .line 43
    array-length v2, p1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    new-array v1, v4, [I

    .line 49
    .local v1, key:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 50
    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v2

    aput v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-object v1
.end method

.method private gost28147MacFunc([I[BI[BI)V
    .locals 6
    .parameter "workingKey"
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 108
    invoke-direct {p0, p2, p3}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v0

    .line 109
    .local v0, N1:I
    add-int/lit8 v5, p3, 0x4

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bytesToint([BI)I

    move-result v1

    .line 111
    .local v1, N2:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 113
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    .line 114
    move v4, v0

    .line 115
    .local v4, tmp:I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 116
    move v1, v4

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v4           #tmp:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v2           #j:I
    :cond_1
    invoke-direct {p0, v0, p4, p5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    .line 121
    add-int/lit8 v5, p5, 0x4

    invoke-direct {p0, v1, p4, v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->intTobytes(I[BI)V

    .line 122
    return-void
.end method

.method private gost28147_mainStep(II)I
    .locals 4
    .parameter "n1"
    .parameter "key"

    .prologue
    .line 90
    add-int v0, p2, p1

    .line 94
    .local v0, cm:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v1, v2, 0x0

    .line 95
    .local v1, om:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x10

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 96
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x20

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 97
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x30

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    .line 98
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x40

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 99
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x14

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x50

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 100
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x18

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x60

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    .line 101
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    shr-int/lit8 v3, v0, 0x1c

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x70

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    .line 103
    shl-int/lit8 v2, v1, 0xb

    ushr-int/lit8 v3, v1, 0x15

    or-int/2addr v2, v3

    return v2
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .parameter "num"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 132
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 133
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 134
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 135
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 136
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 210
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte v3, v0, v1

    .line 212
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    .line 216
    .local v2, sumbuf:[B
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v0, :cond_1

    .line 219
    iput-boolean v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 224
    :goto_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 226
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    sub-int/2addr v1, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 230
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0

    .line 221
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    goto :goto_1
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->reset()V

    .line 58
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    .line 59
    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 60
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    .line 65
    .local v0, param:Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->S:[B

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    .line 79
    .end local v0           #param:Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local p1
    :cond_1
    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_2

    .line 74
    check-cast p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p1
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->generateWorkingKey([B)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    goto :goto_0

    .line 76
    .restart local p1
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    aput-byte v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 244
    return-void
.end method

.method public update(B)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    .line 153
    .local v2, sumbuf:[B
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v0, :cond_1

    .line 156
    iput-boolean v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 161
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 162
    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 165
    .end local v2           #sumbuf:[B
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    aput-byte p1, v0, v1

    .line 166
    return-void

    .line 158
    .restart local v2       #sumbuf:[B
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    goto :goto_0
.end method

.method public update([BII)V
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    if-gez p3, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    sub-int v6, v0, v1

    .line 176
    .local v6, gapLen:I
    if-le p3, v6, :cond_2

    .line 177
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    array-length v0, v0

    new-array v2, v0, [B

    .line 180
    .local v2, sumbuf:[B
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    array-length v1, v1

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    if-eqz v0, :cond_1

    .line 183
    iput-boolean v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->firstStep:Z

    .line 188
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 190
    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 191
    sub-int/2addr p3, v6

    .line 192
    add-int/2addr p2, v6

    .line 194
    :goto_1
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    if-le p3, v0, :cond_2

    .line 195
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    .line 196
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->workingKey:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->gost28147MacFunc([I[BI[BI)V

    .line 198
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    sub-int/2addr p3, v0

    .line 199
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->blockSize:I

    add-int/2addr p2, v0

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->mac:[B

    invoke-direct {p0, v0, v3, v1}, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->CM5func([BI[B)[B

    move-result-object v2

    goto :goto_0

    .line 203
    .end local v2           #sumbuf:[B
    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/GOST28147Mac;->bufOff:I

    .line 206
    return-void
.end method
