.class public Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;
.super Ljava/lang/Object;
.source "Grainv1Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    .prologue
    .line 248
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->oneRound()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 252
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 15

    .prologue
    .line 146
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xf

    or-int v0, v12, v13

    .line 147
    .local v0, b1:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xe

    or-int v2, v12, v13

    .line 148
    .local v2, b2:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xc

    or-int v4, v12, v13

    .line 149
    .local v4, b4:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xa

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x6

    or-int v1, v12, v13

    .line 150
    .local v1, b10:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xf

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x1

    or-int v3, v12, v13

    .line 151
    .local v3, b31:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xb

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x5

    or-int v5, v12, v13

    .line 152
    .local v5, b43:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x8

    or-int v6, v12, v13

    .line 153
    .local v6, b56:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xf

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x1

    or-int v7, v12, v13

    .line 154
    .local v7, b63:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xd

    or-int v9, v12, v13

    .line 155
    .local v9, s3:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0x9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x7

    or-int v8, v12, v13

    .line 156
    .local v8, s25:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xe

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x2

    or-int v10, v12, v13

    .line 157
    .local v10, s46:I
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v13, 0x4

    aget v11, v12, v13

    .line 159
    .local v11, s64:I
    xor-int v12, v8, v7

    and-int v13, v9, v11

    xor-int/2addr v12, v13

    and-int v13, v10, v11

    xor-int/2addr v12, v13

    and-int v13, v11, v7

    xor-int/2addr v12, v13

    and-int v13, v9, v8

    and-int/2addr v13, v10

    xor-int/2addr v12, v13

    and-int v13, v9, v10

    and-int/2addr v13, v11

    xor-int/2addr v12, v13

    and-int v13, v9, v10

    and-int/2addr v13, v7

    xor-int/2addr v12, v13

    and-int v13, v8, v10

    and-int/2addr v13, v7

    xor-int/2addr v12, v13

    and-int v13, v10, v11

    and-int/2addr v13, v7

    xor-int/2addr v12, v13

    xor-int/2addr v12, v0

    xor-int/2addr v12, v2

    xor-int/2addr v12, v4

    xor-int/2addr v12, v1

    xor-int/2addr v12, v3

    xor-int/2addr v12, v5

    xor-int/2addr v12, v6

    const v13, 0xffff

    and-int/2addr v12, v13

    return v12
.end method

.method private getOutputLFSR()I
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    .line 130
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v0, v6, v7

    .line 131
    .local v0, s0:I
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0xd

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v9

    shl-int/lit8 v7, v7, 0x3

    or-int v1, v6, v7

    .line 132
    .local v1, s13:I
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v9

    ushr-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x9

    or-int v2, v6, v7

    .line 133
    .local v2, s23:I
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v10

    ushr-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    or-int v3, v6, v7

    .line 134
    .local v3, s38:I
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v8

    ushr-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v11

    shl-int/lit8 v7, v7, 0xd

    or-int v4, v6, v7

    .line 135
    .local v4, s51:I
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v8

    ushr-int/lit8 v6, v6, 0xe

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v11

    shl-int/lit8 v7, v7, 0x2

    or-int v5, v6, v7

    .line 137
    .local v5, s62:I
    xor-int v6, v0, v1

    xor-int/2addr v6, v2

    xor-int/2addr v6, v3

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    const v7, 0xffff

    and-int/2addr v6, v7

    return v6
.end method

.method private getOutputNFSR()I
    .locals 17

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x0

    aget v1, v14, v15

    .line 105
    .local v1, b0:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x9

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x7

    or-int v13, v14, v15

    .line 106
    .local v13, b9:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xe

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x2

    or-int v2, v14, v15

    .line 107
    .local v2, b14:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xf

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x1

    or-int v3, v14, v15

    .line 108
    .local v3, b15:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0xb

    or-int v4, v14, v15

    .line 109
    .local v4, b21:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xc

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x4

    or-int v5, v14, v15

    .line 110
    .local v5, b28:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0xf

    or-int v6, v14, v15

    .line 111
    .local v6, b33:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0xb

    or-int v7, v14, v15

    .line 112
    .local v7, b37:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xd

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x3

    or-int v8, v14, v15

    .line 113
    .local v8, b45:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x4

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0xc

    or-int v9, v14, v15

    .line 114
    .local v9, b52:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xc

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x4

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x4

    or-int v10, v14, v15

    .line 115
    .local v10, b60:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xe

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x4

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x2

    or-int v11, v14, v15

    .line 116
    .local v11, b62:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0xf

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/16 v16, 0x4

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x1

    or-int v12, v14, v15

    .line 118
    .local v12, b63:I
    xor-int v14, v11, v10

    xor-int/2addr v14, v9

    xor-int/2addr v14, v8

    xor-int/2addr v14, v7

    xor-int/2addr v14, v6

    xor-int/2addr v14, v5

    xor-int/2addr v14, v4

    xor-int/2addr v14, v2

    xor-int/2addr v14, v13

    xor-int/2addr v14, v1

    and-int v15, v12, v10

    xor-int/2addr v14, v15

    and-int v15, v7, v6

    xor-int/2addr v14, v15

    and-int v15, v3, v13

    xor-int/2addr v14, v15

    and-int v15, v10, v9

    and-int/2addr v15, v8

    xor-int/2addr v14, v15

    and-int v15, v6, v5

    and-int/2addr v15, v4

    xor-int/2addr v14, v15

    and-int v15, v12, v8

    and-int/2addr v15, v5

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    and-int v15, v10, v9

    and-int/2addr v15, v7

    and-int/2addr v15, v6

    xor-int/2addr v14, v15

    and-int v15, v12, v10

    and-int/2addr v15, v4

    and-int/2addr v15, v3

    xor-int/2addr v14, v15

    and-int v15, v12, v10

    and-int/2addr v15, v9

    and-int/2addr v15, v8

    and-int/2addr v15, v7

    xor-int/2addr v14, v15

    and-int v15, v6, v5

    and-int/2addr v15, v4

    and-int/2addr v15, v3

    and-int/2addr v15, v13

    xor-int/2addr v14, v15

    and-int v15, v9, v8

    and-int/2addr v15, v7

    and-int/2addr v15, v6

    and-int/2addr v15, v5

    and-int/2addr v15, v4

    xor-int/2addr v14, v15

    const v15, 0xffff

    and-int/2addr v14, v15

    return v14
.end method

.method private initGrain()V
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    .line 92
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 93
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    .line 96
    return-void
.end method

.method private oneRound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    .line 233
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 234
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    const/4 v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 236
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 237
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 238
    return-void
.end method

.method private setKey([B[B)V
    .locals 6
    .parameter "keyBytes"
    .parameter "ivBytes"

    .prologue
    const v5, 0xffff

    const/4 v3, -0x1

    .line 187
    const/16 v2, 0x8

    aput-byte v3, p2, v2

    .line 188
    const/16 v2, 0x9

    aput-byte v3, p2, v2

    .line 189
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    .line 190
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v2, v0

    .line 198
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v2, v0

    .line 199
    add-int/lit8 v1, v1, 0x2

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 6
    .parameter "array"
    .parameter "val"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 171
    const/4 v0, 0x0

    aget v1, p1, v2

    aput v1, p1, v0

    .line 172
    aget v0, p1, v3

    aput v0, p1, v2

    .line 173
    aget v0, p1, v4

    aput v0, p1, v3

    .line 174
    aget v0, p1, v5

    aput v0, p1, v4

    .line 175
    aput p2, p1, v5

    .line 177
    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Grain v1"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 52
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain v1 Init parameters must include an IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 56
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 58
    .local v1, ivParams:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 60
    .local v0, iv:[B
    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 61
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain v1 requires exactly 8 bytes of IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain v1 Init parameters must include a key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 73
    .local v2, key:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    .line 74
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    .line 75
    new-array v3, v5, [I

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 76
    new-array v3, v5, [I

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 77
    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    .line 79
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    array-length v4, v0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->setKey([B[B)V

    .line 83
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->initGrain()V

    .line 84
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 210
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 214
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 218
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 224
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->setKey([B[B)V

    .line 225
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;->initGrain()V

    .line 226
    return-void
.end method
