.class public Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD256Digest.java"


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    .line 21
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    .line 31
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 32
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 34
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 35
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 36
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 37
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 38
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 40
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 42
    return-void
.end method

.method private F1(IIIIII)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 156
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F2(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 160
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F3(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 164
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F4(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 168
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF1(IIIIII)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 172
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF2(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 176
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF3(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 180
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF4(IIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"

    .prologue
    .line 184
    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private RL(II)I
    .locals 2
    .parameter "x"
    .parameter "n"

    .prologue
    .line 120
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private f1(III)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 131
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 138
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 145
    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 152
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 71
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 72
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 73
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 74
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 75
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 78
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->finish()V

    .line 80
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 81
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 82
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 83
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 84
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 85
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 86
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 87
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->unpackWord(I[BI)V

    .line 89
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 91
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "RIPEMD256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 27

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget v2, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 195
    .local v2, a:I
    move-object/from16 v0, p0

    iget v3, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 196
    .local v3, b:I
    move-object/from16 v0, p0

    iget v4, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 197
    .local v4, c:I
    move-object/from16 v0, p0

    iget v5, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 198
    .local v5, d:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    move/from16 v22, v0

    .line 199
    .local v22, aa:I
    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 200
    .local v13, bb:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    move/from16 v23, v0

    .line 201
    .local v23, cc:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    move/from16 v24, v0

    .line 207
    .local v24, dd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v2

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v5

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v4

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v3

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v2

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v5

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v4

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v3

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v2

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v5

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v4

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v3

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v2

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v5

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v4

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v3

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move/from16 v7, v22

    move v8, v13

    move/from16 v9, v23

    move/from16 v10, v24

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v8

    .line 225
    .end local v22           #aa:I
    .local v8, aa:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move/from16 v7, v24

    move v9, v13

    move/from16 v10, v23

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v11

    .line 226
    .end local v24           #dd:I
    .local v11, dd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v14, v1, v6

    const/16 v15, 0x9

    move-object/from16 v9, p0

    move/from16 v10, v23

    move v12, v8

    invoke-direct/range {v9 .. v15}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v14

    .line 227
    .end local v23           #cc:I
    .local v14, cc:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v13

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v8

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v11

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v14

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v13

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v8

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v11

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v14

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v13

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v8

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v11

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v14

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x6

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v13

    .line 241
    move/from16 v26, v2

    .line 242
    .local v26, t:I
    move v2, v8

    .line 243
    move/from16 v8, v26

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v2

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v5

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v4

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v3

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v2

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v5

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v4

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v3

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v2

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v5

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v4

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v3

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v2

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v5

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v4

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v3

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v8

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v11

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v14

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v13

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v8

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v15, v1, v6

    const/16 v16, 0x8

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v11

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v14

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v13

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v8

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v11

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v14

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v13

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v8

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v11

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v14

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v13

    .line 282
    move/from16 v26, v3

    .line 283
    move v3, v13

    .line 284
    move/from16 v13, v26

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v2

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v5

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v4

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v3

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v2

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v5

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v4

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v3

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v2

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v5

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v4

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v3

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v2

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v5

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v4

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v3

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v8

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v11

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v14

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v13

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v8

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v15, v1, v6

    const/16 v16, 0x6

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v11

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v14

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v13

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v8

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v11

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v14

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v13

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v8

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v11

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v14

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v13

    .line 323
    move/from16 v26, v4

    .line 324
    move v4, v14

    .line 325
    move/from16 v14, v26

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v2

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v5

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v4

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v3

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v2

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v5

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v4

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v3

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/16 v7, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v2

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v5

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v4

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v3

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v6, v1, v6

    const/16 v7, 0x8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v2

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v5

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v4

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v3

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v8

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v11

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v14

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x1

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v13

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v8

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v11

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v14

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v13

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v8

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xc

    aget v15, v1, v6

    const/16 v16, 0x9

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v11

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x2

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v14

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x9

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v13

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v8

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x7

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v11

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v14

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v6, 0xe

    aget v17, v1, v6

    const/16 v18, 0x8

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v13

    .line 364
    move/from16 v26, v5

    .line 365
    move v5, v11

    .line 366
    move/from16 v11, v26

    .line 368
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 369
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 370
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 371
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 372
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    add-int/2addr v1, v8

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    add-int/2addr v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 374
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 375
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    add-int/2addr v1, v11

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 380
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 381
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v1, v1

    move/from16 v0, v25

    if-eq v0, v1, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v1, v25

    .line 381
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 62
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->processBlock()V

    .line 66
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 68
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 53
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 56
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->processBlock()V

    .line 59
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 100
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 101
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 102
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 103
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 104
    const v1, 0x76543210

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 105
    const v1, -0x1234568

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 106
    const v1, -0x76543211

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 107
    const v1, 0x1234567

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 109
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aput v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method
