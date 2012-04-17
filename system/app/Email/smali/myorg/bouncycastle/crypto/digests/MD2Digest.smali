.class public Lmyorg/bouncycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;
.source "MD2Digest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final S:[B


# instance fields
.field private C:[B

.field private COff:I

.field private M:[B

.field private X:[B

.field private mOff:I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    return-void

    :array_0
    .array-data 0x1
        0x29t
        0x2et
        0x43t
        0xc9t
        0xa2t
        0xd8t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        0xa1t
        0xect
        0xf0t
        0x6t
        0x13t
        0x62t
        0xa7t
        0x5t
        0xf3t
        0xc0t
        0xc7t
        0x73t
        0x8ct
        0x98t
        0x93t
        0x2bt
        0xd9t
        0xbct
        0x4ct
        0x82t
        0xcat
        0x1et
        0x9bt
        0x57t
        0x3ct
        0xfdt
        0xd4t
        0xe0t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        0x8at
        0x17t
        0xe5t
        0x12t
        0xbet
        0x4et
        0xc4t
        0xd6t
        0xdat
        0x9et
        0xdet
        0x49t
        0xa0t
        0xfbt
        0xf5t
        0x8et
        0xbbt
        0x2ft
        0xeet
        0x7at
        0xa9t
        0x68t
        0x79t
        0x91t
        0x15t
        0xb2t
        0x7t
        0x3ft
        0x94t
        0xc2t
        0x10t
        0x89t
        0xbt
        0x22t
        0x5ft
        0x21t
        0x80t
        0x7ft
        0x5dt
        0x9at
        0x5at
        0x90t
        0x32t
        0x27t
        0x35t
        0x3et
        0xcct
        0xe7t
        0xbft
        0xf7t
        0x97t
        0x3t
        0xfft
        0x19t
        0x30t
        0xb3t
        0x48t
        0xa5t
        0xb5t
        0xd1t
        0xd7t
        0x5et
        0x92t
        0x2at
        0xact
        0x56t
        0xaat
        0xc6t
        0x4ft
        0xb8t
        0x38t
        0xd2t
        0x96t
        0xa4t
        0x7dt
        0xb6t
        0x76t
        0xfct
        0x6bt
        0xe2t
        0x9ct
        0x74t
        0x4t
        0xf1t
        0x45t
        0x9dt
        0x70t
        0x59t
        0x64t
        0x71t
        0x87t
        0x20t
        0x86t
        0x5bt
        0xcft
        0x65t
        0xe6t
        0x2dt
        0xa8t
        0x2t
        0x1bt
        0x60t
        0x25t
        0xadt
        0xaet
        0xb0t
        0xb9t
        0xf6t
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        0xa3t
        0x23t
        0xddt
        0x51t
        0xaft
        0x3at
        0xc3t
        0x5ct
        0xf9t
        0xcet
        0xbat
        0xc5t
        0xeat
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        0x85t
        0x28t
        0x84t
        0x9t
        0xd3t
        0xdft
        0xcdt
        0xf4t
        0x41t
        0x81t
        0x4dt
        0x52t
        0x6at
        0xdct
        0x37t
        0xc8t
        0x6ct
        0xc1t
        0xabt
        0xfat
        0x24t
        0xe1t
        0x7bt
        0x8t
        0xct
        0xbdt
        0xb1t
        0x4at
        0x78t
        0x88t
        0x95t
        0x8bt
        0xe3t
        0x63t
        0xe8t
        0x6dt
        0xe9t
        0xcbt
        0xd5t
        0xfet
        0x3bt
        0x0t
        0x1dt
        0x39t
        0xf2t
        0xeft
        0xb7t
        0xet
        0x66t
        0x58t
        0xd0t
        0xe4t
        0xa6t
        0x77t
        0x72t
        0xf8t
        0xebt
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        0xb4t
        0x8ft
        0xedt
        0x1ft
        0x1at
        0xdbt
        0x99t
        0x8dt
        0x33t
        0x9ft
        0x11t
        0x83t
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    .line 24
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/MD2Digest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/16 v1, 0x10

    const/4 v3, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    .line 28
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    .line 30
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 32
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    .line 34
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v4, 0x10

    .line 64
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    sub-int/2addr v2, v3

    int-to-byte v1, v2

    .line 65
    .local v1, paddingByte:B
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 66
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v1, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 71
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 73
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 75
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    .line 79
    return v4
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "MD2"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock([B)V
    .locals 8
    .parameter "m"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 163
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v5, v0, 0x10

    aget-byte v6, p1, v0

    aput-byte v6, v4, v5

    .line 164
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v5, v0, 0x20

    aget-byte v6, p1, v0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v3, 0x0

    .line 169
    .local v3, t:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v4, 0x12

    if-ge v1, v4, :cond_2

    .line 170
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    const/16 v4, 0x30

    if-ge v2, v4, :cond_1

    .line 171
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v5, v4, v2

    sget-object v6, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v3, v5

    aput-byte v3, v4, v2

    .line 172
    and-int/lit16 v3, v3, 0xff

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 174
    :cond_1
    add-int v4, v3, v1

    rem-int/lit16 v3, v4, 0x100

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v2           #k:I
    :cond_2
    return-void
.end method

.method protected processCheckSum([B)V
    .locals 6
    .parameter "m"

    .prologue
    .line 154
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    const/16 v3, 0xf

    aget-byte v0, v2, v3

    .line 155
    .local v0, L:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 156
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v3, v2, v1

    sget-object v4, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, p1, v1

    xor-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 157
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v0, v2, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aput-byte v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 91
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    .line 95
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aput-byte v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3
    .parameter "in"

    .prologue
    .line 106
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    aput-byte p1, v0, v1

    .line 108
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 110
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    .line 113
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/16 v2, 0x10

    .line 126
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 127
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    .line 128
    add-int/lit8 p2, p2, 0x1

    .line 129
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 135
    :cond_0
    :goto_1
    if-le p3, v2, :cond_1

    .line 136
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 138
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 139
    add-int/lit8 p3, p3, -0x10

    .line 140
    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    .line 146
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 147
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    .line 148
    add-int/lit8 p2, p2, 0x1

    .line 149
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 151
    :cond_2
    return-void
.end method
