.class public Lmyorg/bouncycastle/crypto/digests/MD4Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "MD4Digest.java"


# instance fields
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
    .line 22
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 23
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 34
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 35
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 36
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 38
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 40
    return-void
.end method

.method private F(III)I
    .locals 2
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 141
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 145
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 149
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2
    .parameter "x"
    .parameter "n"

    .prologue
    .line 134
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 69
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 70
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 71
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 72
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 73
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 76
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->finish()V

    .line 78
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 79
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 80
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 81
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 83
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    .line 85
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "MD4"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v10, 0x3

    const v9, 0x6ed9eba1

    const v8, 0x5a827999

    .line 153
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 154
    .local v0, a:I
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 155
    .local v1, b:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 156
    .local v2, c:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 161
    .local v3, d:I
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 162
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 163
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 164
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 165
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 166
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 167
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 168
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 169
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 170
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 171
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 172
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 173
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 174
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 175
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 176
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0x13

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 181
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 182
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 183
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 184
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 185
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 186
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 187
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 188
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 189
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 190
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 191
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 192
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 193
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 194
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 195
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 196
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    const/16 v6, 0xd

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 201
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 202
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 203
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 204
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 205
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 206
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 207
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 208
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 209
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 210
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 211
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 212
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 213
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    .line 214
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 215
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 216
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 218
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v0

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 219
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v5, v1

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 220
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v5, v2

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 221
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v5, v3

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 226
    const/4 v5, 0x0

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 227
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 228
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 60
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 61
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 64
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 66
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

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

    .line 54
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 57
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 94
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 95
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 96
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 97
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 99
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
