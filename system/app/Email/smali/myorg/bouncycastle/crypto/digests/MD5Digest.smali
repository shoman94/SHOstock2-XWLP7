.class public Lmyorg/bouncycastle/crypto/digests/MD5Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"


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
    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 20
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 30
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 31
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 32
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 35
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 37
    return-void
.end method

.method private F(III)I
    .locals 2
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 146
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
    .line 150
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 154
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private K(III)I
    .locals 1
    .parameter "u"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 158
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2
    .parameter "x"
    .parameter "n"

    .prologue
    .line 139
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
    .line 66
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 67
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 68
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 69
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 70
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 73
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->finish()V

    .line 75
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 76
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 77
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 78
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 80
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 82
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "MD5"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    .line 162
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 163
    .local v0, a:I
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 164
    .local v1, b:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 165
    .local v2, c:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 170
    .local v3, d:I
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 171
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 172
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 173
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 174
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 175
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 176
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 177
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 178
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 179
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 180
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 181
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 182
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 184
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 185
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 190
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 191
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 192
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 193
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 194
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 195
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 196
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 197
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 198
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 199
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 200
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 201
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 202
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 203
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 204
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 205
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 210
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 211
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 212
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 213
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 214
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 215
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 216
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 217
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 218
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 219
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 220
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 221
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, 0x4881d05

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 222
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 223
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 224
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 225
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 230
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 231
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 232
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 233
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 234
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 235
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 236
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 237
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 238
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 239
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 240
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 241
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x4e0811a1

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 242
    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 243
    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 244
    invoke-direct {p0, v3, v0, v1}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 245
    invoke-direct {p0, v2, v3, v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 247
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v5, v0

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 248
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v5, v1

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 249
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v5, v2

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 250
    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v5, v3

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 255
    const/4 v5, 0x0

    iput v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 256
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 257
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .parameter "bitLength"

    .prologue
    const/16 v3, 0xe

    .line 57
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 61
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 63
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

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

    .line 51
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 54
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 91
    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 92
    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 93
    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 94
    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 96
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
