.class public Lmyorg/bouncycastle/crypto/digests/SHA1Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 17
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 24
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/SHA1Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 17
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 34
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 35
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 36
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 37
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 38
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 40
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 42
    return-void
.end method

.method private f(III)I
    .locals 2
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 116
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 124
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 120
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 76
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    .line 78
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 79
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 80
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 81
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 82
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 84
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 86
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    .line 131
    const/16 v5, 0x10

    .local v5, i:I
    :goto_0
    const/16 v10, 0x50

    if-ge v5, v10, :cond_0

    .line 132
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v5, -0x3

    aget v10, v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x8

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0xe

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v5, -0x10

    aget v11, v11, v12

    xor-int v9, v10, v11

    .line 133
    .local v9, t:I
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .end local v9           #t:I
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 140
    .local v0, A:I
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 141
    .local v1, B:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 142
    .local v2, C:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 143
    .local v3, D:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 148
    .local v4, E:I
    const/4 v6, 0x0

    .line 150
    .local v6, idx:I
    const/4 v8, 0x0

    .local v8, j:I
    move v7, v6

    .end local v6           #idx:I
    .local v7, idx:I
    :goto_1
    const/4 v10, 0x4

    if-ge v8, v10, :cond_1

    .line 153
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 154
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 156
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 157
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 159
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 160
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 162
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 163
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 165
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 166
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 150
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_1

    .line 172
    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x4

    if-ge v8, v10, :cond_2

    .line 175
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 176
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 178
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 179
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 181
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 182
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 184
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 185
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 187
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 188
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 172
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_2

    .line 194
    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v10, 0x4

    if-ge v8, v10, :cond_3

    .line 197
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 198
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 200
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 201
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 203
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 204
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 206
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 207
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 209
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 210
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 194
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_3

    .line 216
    :cond_3
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x3

    if-gt v8, v10, :cond_4

    .line 219
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 220
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 222
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 223
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 225
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 226
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 228
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 229
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 231
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 232
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 216
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto/16 :goto_4

    .line 235
    :cond_4
    iget v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 236
    iget v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 237
    iget v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 238
    iget v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 239
    iget v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 244
    const/4 v10, 0x0

    iput v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 245
    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x10

    if-ge v5, v10, :cond_5

    .line 246
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 248
    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 67
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 68
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 71
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 73
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 55
    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    .line 56
    .local v0, n:I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 57
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 58
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aput v0, v1, v2

    .line 61
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 64
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 95
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 96
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 97
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 98
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 99
    const v1, -0x3c2d1e10

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 101
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
