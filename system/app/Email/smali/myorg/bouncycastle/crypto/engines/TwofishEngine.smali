.class public final Lmyorg/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final P:[[B


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 0x1
        0xa9t
        0x67t
        0xb3t
        0xe8t
        0x4t
        0xfdt
        0xa3t
        0x76t
        0x9at
        0x92t
        0x80t
        0x78t
        0xe4t
        0xddt
        0xd1t
        0x38t
        0xdt
        0xc6t
        0x35t
        0x98t
        0x18t
        0xf7t
        0xect
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        0xfat
        0x13t
        0x94t
        0x48t
        0xf2t
        0xd0t
        0x8bt
        0x30t
        0x84t
        0x54t
        0xdft
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        0xf3t
        0xaet
        0xa2t
        0x82t
        0x63t
        0x1t
        0x83t
        0x2et
        0xd9t
        0x51t
        0x9bt
        0x7ct
        0xa6t
        0xebt
        0xa5t
        0xbet
        0x16t
        0xct
        0xe3t
        0x61t
        0xc0t
        0x8ct
        0x3at
        0xf5t
        0x73t
        0x2ct
        0x25t
        0xbt
        0xbbt
        0x4et
        0x89t
        0x6bt
        0x53t
        0x6at
        0xb4t
        0xf1t
        0xe1t
        0xe6t
        0xbdt
        0x45t
        0xe2t
        0xf4t
        0xb6t
        0x66t
        0xcct
        0x95t
        0x3t
        0x56t
        0xd4t
        0x1ct
        0x1et
        0xd7t
        0xfbt
        0xc3t
        0x8et
        0xb5t
        0xe9t
        0xcft
        0xbft
        0xbat
        0xeat
        0x77t
        0x39t
        0xaft
        0x33t
        0xc9t
        0x62t
        0x71t
        0x81t
        0x79t
        0x9t
        0xadt
        0x24t
        0xcdt
        0xf9t
        0xd8t
        0xe5t
        0xc5t
        0xb9t
        0x4dt
        0x44t
        0x8t
        0x86t
        0xe7t
        0xa1t
        0x1dt
        0xaat
        0xedt
        0x6t
        0x70t
        0xb2t
        0xd2t
        0x41t
        0x7bt
        0xa0t
        0x11t
        0x31t
        0xc2t
        0x27t
        0x90t
        0x20t
        0xf6t
        0x60t
        0xfft
        0x96t
        0x5ct
        0xb1t
        0xabt
        0x9et
        0x9ct
        0x52t
        0x1bt
        0x5ft
        0x93t
        0xat
        0xeft
        0x91t
        0x85t
        0x49t
        0xeet
        0x2dt
        0x4ft
        0x8ft
        0x3bt
        0x47t
        0x87t
        0x6dt
        0x46t
        0xd6t
        0x3et
        0x69t
        0x64t
        0x2at
        0xcet
        0xcbt
        0x2ft
        0xfct
        0x97t
        0x5t
        0x7at
        0xact
        0x7ft
        0xd5t
        0x1at
        0x4bt
        0xet
        0xa7t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        0x88t
        0x3ct
        0x4ct
        0x2t
        0xb8t
        0xdat
        0xb0t
        0x17t
        0x55t
        0x1ft
        0x8at
        0x7dt
        0x57t
        0xc7t
        0x8dt
        0x74t
        0xb7t
        0xc4t
        0x9ft
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        0x99t
        0x34t
        0x6et
        0x50t
        0xdet
        0x68t
        0x65t
        0xbct
        0xdbt
        0xf8t
        0xc8t
        0xa8t
        0x2bt
        0x40t
        0xdct
        0xfet
        0x32t
        0xa4t
        0xcat
        0x10t
        0x21t
        0xf0t
        0xd3t
        0x5dt
        0xft
        0x0t
        0x6ft
        0x9dt
        0x36t
        0x42t
        0x4at
        0x5et
        0xc1t
        0xe0t
    .end array-data

    :array_1
    .array-data 0x1
        0x75t
        0xf3t
        0xc6t
        0xf4t
        0xdbt
        0x7bt
        0xfbt
        0xc8t
        0x4at
        0xd3t
        0xe6t
        0x6bt
        0x45t
        0x7dt
        0xe8t
        0x4bt
        0xd6t
        0x32t
        0xd8t
        0xfdt
        0x37t
        0x71t
        0xf1t
        0xe1t
        0x30t
        0xft
        0xf8t
        0x1bt
        0x87t
        0xfat
        0x6t
        0x3ft
        0x5et
        0xbat
        0xaet
        0x5bt
        0x8at
        0x0t
        0xbct
        0x9dt
        0x6dt
        0xc1t
        0xb1t
        0xet
        0x80t
        0x5dt
        0xd2t
        0xd5t
        0xa0t
        0x84t
        0x7t
        0x14t
        0xb5t
        0x90t
        0x2ct
        0xa3t
        0xb2t
        0x73t
        0x4ct
        0x54t
        0x92t
        0x74t
        0x36t
        0x51t
        0x38t
        0xb0t
        0xbdt
        0x5at
        0xfct
        0x60t
        0x62t
        0x96t
        0x6ct
        0x42t
        0xf7t
        0x10t
        0x7ct
        0x28t
        0x27t
        0x8ct
        0x13t
        0x95t
        0x9ct
        0xc7t
        0x24t
        0x46t
        0x3bt
        0x70t
        0xcat
        0xe3t
        0x85t
        0xcbt
        0x11t
        0xd0t
        0x93t
        0xb8t
        0xa6t
        0x83t
        0x20t
        0xfft
        0x9ft
        0x77t
        0xc3t
        0xcct
        0x3t
        0x6ft
        0x8t
        0xbft
        0x40t
        0xe7t
        0x2bt
        0xe2t
        0x79t
        0xct
        0xaat
        0x82t
        0x41t
        0x3at
        0xeat
        0xb9t
        0xe4t
        0x9at
        0xa4t
        0x97t
        0x7et
        0xdat
        0x7at
        0x17t
        0x66t
        0x94t
        0xa1t
        0x1dt
        0x3dt
        0xf0t
        0xdet
        0xb3t
        0xbt
        0x72t
        0xa7t
        0x1ct
        0xeft
        0xd1t
        0x53t
        0x3et
        0x8ft
        0x33t
        0x26t
        0x5ft
        0xect
        0x76t
        0x2at
        0x49t
        0x81t
        0x88t
        0xeet
        0x21t
        0xc4t
        0x1at
        0xebt
        0xd9t
        0xc5t
        0x39t
        0x99t
        0xcdt
        0xadt
        0x31t
        0x8bt
        0x1t
        0x18t
        0x23t
        0xddt
        0x1ft
        0x4et
        0x2dt
        0xf9t
        0x48t
        0x4ft
        0xf2t
        0x65t
        0x8et
        0x78t
        0x5ct
        0x58t
        0x19t
        0x8dt
        0xe5t
        0x98t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        0xaft
        0x63t
        0xb6t
        0xfet
        0xf5t
        0xb7t
        0x3ct
        0xa5t
        0xcet
        0xe9t
        0x68t
        0x44t
        0xe0t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        0xact
        0x15t
        0x59t
        0xa8t
        0xat
        0x9et
        0x6et
        0x47t
        0xdft
        0x34t
        0x35t
        0x6at
        0xcft
        0xdct
        0x22t
        0xc9t
        0xc0t
        0x9bt
        0x89t
        0xd4t
        0xedt
        0xabt
        0x12t
        0xa2t
        0xdt
        0x52t
        0xbbt
        0x2t
        0x2ft
        0xa9t
        0xd7t
        0x61t
        0x1et
        0xb4t
        0x50t
        0x4t
        0xf6t
        0xc2t
        0x16t
        0x25t
        0x86t
        0x56t
        0x55t
        0x9t
        0xbet
        0x91t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/16 v10, 0x100

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 164
    new-array v5, v10, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 165
    new-array v5, v10, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 166
    new-array v5, v10, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 167
    new-array v5, v10, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 176
    iput v8, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 178
    const/4 v5, 0x0

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 182
    new-array v2, v6, [I

    .line 183
    .local v2, m1:[I
    new-array v3, v6, [I

    .line 184
    .local v3, mX:[I
    new-array v4, v6, [I

    .line 187
    .local v4, mY:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 188
    sget-object v5, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v8

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 189
    .local v1, j:I
    aput v1, v2, v8

    .line 190
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v8

    .line 191
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    .line 193
    sget-object v5, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v9

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 194
    aput v1, v2, v9

    .line 195
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v9

    .line 196
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v9

    .line 198
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v6, v2, v9

    aget v7, v3, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 200
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v6, v4, v8

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 202
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v6, v3, v9

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v2, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 204
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v6, v3, v8

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 206
    .end local v1           #j:I
    :cond_0
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .locals 2
    .parameter "in"
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 555
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 556
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 557
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 558
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 559
    return-void
.end method

.method private BytesTo32Bits([BI)I
    .locals 2
    .parameter "b"
    .parameter "p"

    .prologue
    .line 550
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .locals 14
    .parameter "x"
    .parameter "k32"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    .line 431
    .local v0, b0:I
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    .line 432
    .local v1, b1:I
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    .line 433
    .local v2, b2:I
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    .line 434
    .local v3, b3:I
    const/4 v9, 0x0

    aget v4, p2, v9

    .line 435
    .local v4, k0:I
    const/4 v9, 0x1

    aget v5, p2, v9

    .line 436
    .local v5, k1:I
    const/4 v9, 0x2

    aget v6, p2, v9

    .line 437
    .local v6, k2:I
    const/4 v9, 0x3

    aget v7, p2, v9

    .line 439
    .local v7, k3:I
    const/4 v8, 0x0

    .line 440
    .local v8, result:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    .line 464
    :goto_0
    return v8

    .line 442
    :pswitch_0
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-byte v10, v10, v0

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v1

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v3

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 446
    goto :goto_0

    .line 448
    :pswitch_1
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 449
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 450
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 451
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 453
    :pswitch_2
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 454
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 455
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 456
    sget-object v9, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 458
    :pswitch_3
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v0

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v1

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-byte v12, v12, v2

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    goto/16 :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 540
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 545
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 507
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private LFSR2(I)I
    .locals 3
    .parameter "x"

    .prologue
    const/4 v0, 0x0

    .line 511
    shr-int/lit8 v2, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/16 v0, 0x5a

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private Mx_X(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .locals 3
    .parameter "k0"
    .parameter "k1"

    .prologue
    const/4 v2, 0x4

    .line 476
    move v1, p2

    .line 477
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 479
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    xor-int/2addr v1, p1

    .line 482
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 483
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_1
    return v1
.end method

.method private RS_rem(I)I
    .locals 6
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    .line 500
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 501
    .local v0, b:I
    shl-int/lit8 v5, v0, 0x1

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    const/16 v4, 0x14d

    :goto_0
    xor-int/2addr v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 502
    .local v1, g2:I
    ushr-int/lit8 v4, v0, 0x1

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/16 v3, 0xa6

    :cond_0
    xor-int/2addr v3, v4

    xor-int v2, v3, v1

    .line 503
    .local v2, g3:I
    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3

    .end local v1           #g2:I
    .end local v2           #g3:I
    :cond_1
    move v4, v3

    .line 501
    goto :goto_0
.end method

.method private b0(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 524
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 528
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 532
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 536
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 14
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 397
    invoke-direct/range {p0 .. p2}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 398
    .local v9, x2:I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 399
    .local v10, x3:I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 400
    .local v7, x0:I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 402
    .local v8, x1:I
    const/16 v2, 0x27

    .line 404
    .local v2, k:I
    const/4 v4, 0x0

    .local v4, r:I
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_0
    const/16 v11, 0x10

    if-ge v4, v11, :cond_0

    .line 405
    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 406
    .local v5, t0:I
    invoke-direct {p0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 407
    .local v6, t1:I
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v8, v11

    .line 408
    shl-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v7, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v7, v11, v12

    .line 409
    ushr-int/lit8 v11, v8, 0x1

    shl-int/lit8 v12, v8, 0x1f

    or-int v8, v11, v12

    .line 411
    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 412
    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 413
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v10, v11

    .line 414
    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v9, v11, v12

    .line 415
    ushr-int/lit8 v11, v10, 0x1

    shl-int/lit8 v12, v10, 0x1f

    or-int v10, v11, v12

    .line 404
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 418
    .end local v5           #t0:I
    .end local v6           #t1:I
    :cond_0
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    xor-int/2addr v11, v7

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 419
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 420
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v9

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 421
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 422
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 14
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 364
    invoke-direct/range {p0 .. p2}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 365
    .local v7, x0:I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 366
    .local v8, x1:I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 367
    .local v9, x2:I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 369
    .local v10, x3:I
    const/16 v2, 0x8

    .line 371
    .local v2, k:I
    const/4 v4, 0x0

    .local v4, r:I
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_0
    const/16 v11, 0x10

    if-ge v4, v11, :cond_0

    .line 372
    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 373
    .local v5, t0:I
    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 374
    .local v6, t1:I
    add-int v11, v5, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v9, v11

    .line 375
    ushr-int/lit8 v11, v9, 0x1

    shl-int/lit8 v12, v9, 0x1f

    or-int v9, v11, v12

    .line 376
    shl-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v10, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v10, v11, v12

    .line 378
    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 379
    invoke-direct {p0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 380
    add-int v11, v5, v6

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v7, v11

    .line 381
    ushr-int/lit8 v11, v7, 0x1

    shl-int/lit8 v12, v7, 0x1f

    or-int v7, v11, v12

    .line 382
    shl-int/lit8 v11, v8, 0x1

    ushr-int/lit8 v12, v8, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v8, v11, v12

    .line 371
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 385
    .end local v5           #t0:I
    .end local v6           #t1:I
    :cond_0
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    xor-int/2addr v11, v9

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 386
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 387
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x6

    aget v11, v11, v12

    xor-int/2addr v11, v7

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 388
    iget-object v11, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 389
    return-void
.end method

.method private setKey([B)V
    .locals 25
    .parameter "key"

    .prologue
    .line 271
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 272
    .local v14, k32e:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v15, v0, [I

    .line 274
    .local v15, k32o:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 275
    .local v18, sBoxKeys:[I
    const/16 v19, 0x28

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 278
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size less than 64 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 281
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 282
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size larger than 256 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 290
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 291
    mul-int/lit8 v16, v9, 0x8

    .line 293
    .local v16, p:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v14, v9

    .line 294
    add-int/lit8 v19, v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v15, v9

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v19, v19, v9

    aget v20, v14, v9

    aget v21, v15, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v20

    aput v20, v18, v19

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 300
    .end local v16           #p:I
    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 301
    const v19, 0x2020202

    mul-int v17, v9, v19

    .line 302
    .local v17, q:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v3

    .line 303
    .local v3, A:I
    const v19, 0x1010101

    add-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v4

    .line 304
    .local v4, B:I
    shl-int/lit8 v19, v4, 0x8

    ushr-int/lit8 v20, v4, 0x18

    or-int v4, v19, v20

    .line 305
    add-int/2addr v3, v4

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    aput v3, v19, v20

    .line 307
    add-int/2addr v3, v4

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    shl-int/lit8 v21, v3, 0x9

    ushr-int/lit8 v22, v3, 0x17

    or-int v21, v21, v22

    aput v21, v19, v20

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 314
    .end local v3           #A:I
    .end local v4           #B:I
    .end local v17           #q:I
    :cond_3
    const/16 v19, 0x0

    aget v10, v18, v19

    .line 315
    .local v10, k0:I
    const/16 v19, 0x1

    aget v11, v18, v19

    .line 316
    .local v11, k1:I
    const/16 v19, 0x2

    aget v12, v18, v19

    .line 317
    .local v12, k2:I
    const/16 v19, 0x3

    aget v13, v18, v19

    .line 319
    .local v13, k3:I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 320
    const/4 v9, 0x0

    :goto_2
    const/16 v19, 0x100

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 321
    move v8, v9

    .local v8, b3:I
    move v7, v9

    .local v7, b2:I
    move v6, v9

    .local v6, b1:I
    move v5, v9

    .line 322
    .local v5, b0:I
    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x3

    packed-switch v19, :pswitch_data_0

    .line 320
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 324
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v5

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v7

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_3

    .line 330
    :pswitch_1
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 331
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 332
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 333
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 335
    :pswitch_2
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 336
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 337
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 338
    sget-object v19, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 340
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v5

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_3

    .line 355
    .end local v5           #b0:I
    .end local v6           #b1:I
    .end local v7           #b2:I
    .end local v8           #b3:I
    :cond_4
    return-void

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "encrypting"
    .parameter "params"

    .prologue
    .line 217
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 218
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 219
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 220
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 221
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 223
    return-void

    .line 226
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 235
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 240
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 244
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    .line 253
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 250
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 260
    :cond_0
    return-void
.end method
