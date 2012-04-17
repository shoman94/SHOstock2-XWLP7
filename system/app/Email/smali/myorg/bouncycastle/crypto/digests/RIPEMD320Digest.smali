.class public Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD320Digest.java"


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private H9:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 22
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 32
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 34
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 35
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 36
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 37
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 38
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 39
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 40
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 41
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 43
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 45
    return-void
.end method

.method private RL(II)I
    .locals 2
    .parameter "x"
    .parameter "n"

    .prologue
    .line 127
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
    .line 138
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
    .line 145
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
    .line 152
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
    .line 159
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private f5(III)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 166
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 74
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 75
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 76
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 77
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 78
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 81
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->finish()V

    .line 83
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 84
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 85
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 86
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 87
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 88
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 89
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 90
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 91
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/lit8 v1, p2, 0x20

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 92
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/lit8 v1, p2, 0x24

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    .line 94
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 96
    const/16 v0, 0x28

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "RIPEMD320"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x28

    return v0
.end method

.method protected processBlock()V
    .locals 15

    .prologue
    .line 177
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 178
    .local v0, a:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 179
    .local v2, b:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 180
    .local v4, c:I
    iget v6, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 181
    .local v6, d:I
    iget v8, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 182
    .local v8, e:I
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 183
    .local v1, aa:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 184
    .local v3, bb:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 185
    .local v5, cc:I
    iget v7, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 186
    .local v7, dd:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 192
    .local v9, ee:I
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 193
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 194
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 195
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 196
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 197
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 198
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 199
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 200
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 201
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 202
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 203
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 204
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 205
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 206
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 207
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 208
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 209
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 210
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 211
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 212
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 213
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 214
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 215
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 216
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 217
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 218
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 219
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 220
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 221
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 222
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 223
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 226
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 227
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 228
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 229
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 230
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 231
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 232
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 233
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 234
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 235
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 236
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 237
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 238
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 239
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 240
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 241
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 242
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 243
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 244
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 245
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 246
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 247
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 248
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 249
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 250
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 251
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 252
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 253
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 254
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 255
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 256
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 257
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 259
    move v11, v0

    .line 260
    .local v11, t:I
    move v0, v1

    .line 261
    move v1, v11

    .line 267
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 268
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 269
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 270
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 271
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 272
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 273
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 274
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 275
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 276
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 277
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 278
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 279
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 280
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 281
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 282
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 283
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 284
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 285
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 286
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 287
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 288
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 289
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 290
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 291
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 292
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 293
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 294
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 295
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 296
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 297
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 298
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 301
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 302
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 303
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 304
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 305
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 306
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 307
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 308
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 309
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 310
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 311
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 312
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 313
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 314
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 315
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 316
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 317
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 318
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 319
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 320
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 321
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 322
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 323
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 324
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 325
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 326
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 327
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 328
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 329
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 330
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 331
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 332
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 334
    move v11, v2

    .line 335
    move v2, v3

    .line 336
    move v3, v11

    .line 342
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 343
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 344
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 345
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 346
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 347
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 348
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 349
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 350
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 351
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 352
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 353
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 354
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 355
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 356
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 357
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 358
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 359
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 360
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 361
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 362
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 363
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 364
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 365
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 366
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 367
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 368
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 369
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 370
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 371
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 372
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 373
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 376
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 377
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 378
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 379
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 380
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 381
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 382
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 383
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 384
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 385
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 386
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 387
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 388
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 389
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 390
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 391
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 392
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 393
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 394
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 395
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 396
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 397
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 398
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 399
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 400
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 401
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 402
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 403
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 404
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 405
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 406
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 407
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 409
    move v11, v4

    .line 410
    move v4, v5

    .line 411
    move v5, v11

    .line 417
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 418
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 419
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 420
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 421
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 422
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 423
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 424
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 425
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 426
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 427
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 428
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 429
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 430
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 431
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 432
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 433
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 434
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 435
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 436
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 437
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 438
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 439
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 440
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 441
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 442
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 443
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 444
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 445
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 446
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 447
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 448
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 451
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 452
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 453
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 454
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 455
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 456
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 457
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 458
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 459
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 460
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 461
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 462
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 463
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 464
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 465
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 466
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 467
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 468
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 469
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 470
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 471
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 472
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 473
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 474
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 475
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 476
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 477
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 478
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 479
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 480
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 481
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 482
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 484
    move v11, v6

    .line 485
    move v6, v7

    .line 486
    move v7, v11

    .line 492
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 493
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 494
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 495
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 496
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 497
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 498
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 499
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 500
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 501
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 502
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 503
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 504
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 505
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 506
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 507
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 508
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 509
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 510
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 511
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 512
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 513
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 514
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    .line 515
    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 516
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    .line 517
    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 518
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    .line 519
    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    .line 520
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    .line 521
    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    .line 522
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    .line 523
    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 526
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 527
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 528
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 529
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 530
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 531
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 532
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 533
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 534
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 535
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 536
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 537
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 538
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 539
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 540
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 541
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 542
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 543
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 544
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 545
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 546
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 547
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 548
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    .line 549
    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 550
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    .line 551
    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 552
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    .line 553
    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 554
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    .line 555
    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 556
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    .line 557
    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 563
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    add-int/2addr v12, v0

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 564
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/2addr v12, v2

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 565
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/2addr v12, v4

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 566
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/2addr v12, v6

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 567
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/2addr v12, v9

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 568
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/2addr v12, v1

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 569
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/2addr v12, v3

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 570
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/2addr v12, v5

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 571
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/2addr v12, v7

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 572
    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/2addr v12, v8

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 577
    const/4 v12, 0x0

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 578
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v12, v12

    if-eq v10, v12, :cond_0

    .line 579
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v13, 0x0

    aput v13, v12, v10

    .line 578
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 65
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 69
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 70
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 71
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

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

    .line 59
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 62
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 105
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 106
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 107
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 108
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 109
    const v1, -0x3c2d1e10

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 110
    const v1, 0x76543210

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 111
    const v1, -0x1234568

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 112
    const v1, -0x76543211

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 113
    const v1, 0x1234567

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 114
    const v1, 0x3c2d1e0f

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 116
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aput v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
