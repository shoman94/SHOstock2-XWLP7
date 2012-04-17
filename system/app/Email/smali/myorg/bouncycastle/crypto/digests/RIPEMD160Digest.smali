.class public Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD160Digest.java"


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    .line 20
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->reset()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    .line 30
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 31
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 32
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 34
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 36
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 38
    return-void
.end method

.method private RL(II)I
    .locals 2
    .parameter "x"
    .parameter "n"

    .prologue
    .line 110
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
    .line 121
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
    .line 128
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
    .line 135
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
    .line 142
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
    .line 149
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
    .line 67
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 68
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 69
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 70
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 71
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 74
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->finish()V

    .line 76
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 77
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 78
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 79
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 80
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 82
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->reset()V

    .line 84
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "RIPEMD160"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 14

    .prologue
    .line 159
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .local v1, aa:I
    move v0, v1

    .line 160
    .local v0, a:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .local v3, bb:I
    move v2, v3

    .line 161
    .local v2, b:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .local v5, cc:I
    move v4, v5

    .line 162
    .local v4, c:I
    iget v7, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .local v7, dd:I
    move v6, v7

    .line 163
    .local v6, d:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .local v9, ee:I
    move v8, v9

    .line 169
    .local v8, e:I
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 170
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 171
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 172
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 173
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 174
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 175
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 176
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 177
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 178
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 179
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 180
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 181
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 182
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 183
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 184
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 185
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 186
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 187
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 188
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 189
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 190
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 191
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 192
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 193
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 194
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 195
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 196
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 197
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 198
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 199
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 200
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 203
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 204
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 205
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 206
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 207
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 208
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 209
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 210
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 211
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 212
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 213
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 214
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 215
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 216
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 217
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 218
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 219
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 220
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 221
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 222
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 223
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 224
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 225
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 226
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 227
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 228
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 229
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 230
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 231
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 232
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 233
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 234
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 240
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 241
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 242
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 243
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 244
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 245
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 246
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 247
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 248
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 249
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 250
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 251
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 252
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 253
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 254
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 255
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 256
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 257
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 258
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 259
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 260
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 261
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 262
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 263
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 264
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 265
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 266
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 267
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 268
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 269
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 270
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 271
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 274
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 275
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 276
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 277
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 278
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 279
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 280
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 281
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 282
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 283
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 284
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 285
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 286
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 287
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 288
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 289
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 290
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 291
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 292
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 293
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 294
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 295
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 296
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 297
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 298
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 299
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 300
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 301
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 302
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 303
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 304
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 305
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 311
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 312
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 313
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 314
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 315
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 316
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 317
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 318
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 319
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 320
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 321
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 322
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 323
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 324
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 325
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 326
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 327
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 328
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 329
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 330
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 331
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 332
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 333
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 334
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 335
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 336
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 337
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 338
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 339
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 340
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 341
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 342
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 345
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 346
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 347
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 348
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 349
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 350
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 351
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 352
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 353
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 354
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 355
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 356
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 357
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 358
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 359
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 360
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 361
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 362
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 363
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 364
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 365
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 366
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 367
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 368
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 369
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 370
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 371
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 372
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 373
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 374
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 375
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 376
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 382
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 383
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 384
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 385
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 386
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 387
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 388
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 389
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 390
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 391
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 392
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 393
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 394
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 395
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 396
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 397
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 398
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 399
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 400
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 401
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 402
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 403
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 404
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 405
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 406
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 407
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 408
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 409
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 410
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 411
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 412
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 413
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 416
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 417
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 418
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 419
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 420
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 421
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 422
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 423
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 424
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 425
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 426
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 427
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 428
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 429
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 430
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 431
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 432
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 433
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 434
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 435
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 436
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 437
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 438
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 439
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 440
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 441
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 442
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 443
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 444
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 445
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 446
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 447
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 453
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 454
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 455
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 456
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 457
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 458
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 459
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 460
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 461
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 462
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 463
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 464
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 465
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 466
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 467
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 468
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 469
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 470
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 471
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 472
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 473
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 474
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 475
    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    .line 476
    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 477
    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    .line 478
    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 479
    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    .line 480
    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 481
    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    .line 482
    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 483
    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    .line 484
    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 487
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 488
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 489
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 490
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 491
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 492
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 493
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 494
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 495
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 496
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 497
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 498
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 499
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 500
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 501
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 502
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 503
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 504
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 505
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 506
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 507
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 508
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 509
    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    .line 510
    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 511
    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    .line 512
    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 513
    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    .line 514
    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 515
    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    .line 516
    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 517
    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    .line 518
    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 520
    iget v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/2addr v11, v4

    add-int/2addr v7, v11

    .line 521
    iget v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    iput v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 522
    iget v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/2addr v11, v8

    add-int/2addr v11, v1

    iput v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 523
    iget v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/2addr v11, v0

    add-int/2addr v11, v3

    iput v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 524
    iget v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    add-int/2addr v11, v2

    add-int/2addr v11, v5

    iput v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 525
    iput v7, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 530
    const/4 v11, 0x0

    iput v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 531
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v11, v11

    if-eq v10, v11, :cond_0

    .line 532
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v12, 0x0

    aput v12, v11, v10

    .line 531
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 58
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    .line 62
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 64
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 49
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

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

    .line 52
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    .line 55
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 93
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 94
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 95
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 96
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 97
    const v1, -0x3c2d1e10

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 99
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
