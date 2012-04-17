.class public Lmyorg/bouncycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final S:[B

.field private static final Si:[B

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 32
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    .line 73
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    .line 114
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    .line 32
    :array_0
    .array-data 0x1
        0x63t
        0x7ct
        0x77t
        0x7bt
        0xf2t
        0x6bt
        0x6ft
        0xc5t
        0x30t
        0x1t
        0x67t
        0x2bt
        0xfet
        0xd7t
        0xabt
        0x76t
        0xcat
        0x82t
        0xc9t
        0x7dt
        0xfat
        0x59t
        0x47t
        0xf0t
        0xadt
        0xd4t
        0xa2t
        0xaft
        0x9ct
        0xa4t
        0x72t
        0xc0t
        0xb7t
        0xfdt
        0x93t
        0x26t
        0x36t
        0x3ft
        0xf7t
        0xcct
        0x34t
        0xa5t
        0xe5t
        0xf1t
        0x71t
        0xd8t
        0x31t
        0x15t
        0x4t
        0xc7t
        0x23t
        0xc3t
        0x18t
        0x96t
        0x5t
        0x9at
        0x7t
        0x12t
        0x80t
        0xe2t
        0xebt
        0x27t
        0xb2t
        0x75t
        0x9t
        0x83t
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        0xa0t
        0x52t
        0x3bt
        0xd6t
        0xb3t
        0x29t
        0xe3t
        0x2ft
        0x84t
        0x53t
        0xd1t
        0x0t
        0xedt
        0x20t
        0xfct
        0xb1t
        0x5bt
        0x6at
        0xcbt
        0xbet
        0x39t
        0x4at
        0x4ct
        0x58t
        0xcft
        0xd0t
        0xeft
        0xaat
        0xfbt
        0x43t
        0x4dt
        0x33t
        0x85t
        0x45t
        0xf9t
        0x2t
        0x7ft
        0x50t
        0x3ct
        0x9ft
        0xa8t
        0x51t
        0xa3t
        0x40t
        0x8ft
        0x92t
        0x9dt
        0x38t
        0xf5t
        0xbct
        0xb6t
        0xdat
        0x21t
        0x10t
        0xfft
        0xf3t
        0xd2t
        0xcdt
        0xct
        0x13t
        0xect
        0x5ft
        0x97t
        0x44t
        0x17t
        0xc4t
        0xa7t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        0x81t
        0x4ft
        0xdct
        0x22t
        0x2at
        0x90t
        0x88t
        0x46t
        0xeet
        0xb8t
        0x14t
        0xdet
        0x5et
        0xbt
        0xdbt
        0xe0t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        0xc2t
        0xd3t
        0xact
        0x62t
        0x91t
        0x95t
        0xe4t
        0x79t
        0xe7t
        0xc8t
        0x37t
        0x6dt
        0x8dt
        0xd5t
        0x4et
        0xa9t
        0x6ct
        0x56t
        0xf4t
        0xeat
        0x65t
        0x7at
        0xaet
        0x8t
        0xbat
        0x78t
        0x25t
        0x2et
        0x1ct
        0xa6t
        0xb4t
        0xc6t
        0xe8t
        0xddt
        0x74t
        0x1ft
        0x4bt
        0xbdt
        0x8bt
        0x8at
        0x70t
        0x3et
        0xb5t
        0x66t
        0x48t
        0x3t
        0xf6t
        0xet
        0x61t
        0x35t
        0x57t
        0xb9t
        0x86t
        0xc1t
        0x1dt
        0x9et
        0xe1t
        0xf8t
        0x98t
        0x11t
        0x69t
        0xd9t
        0x8et
        0x94t
        0x9bt
        0x1et
        0x87t
        0xe9t
        0xcet
        0x55t
        0x28t
        0xdft
        0x8ct
        0xa1t
        0x89t
        0xdt
        0xbft
        0xe6t
        0x42t
        0x68t
        0x41t
        0x99t
        0x2dt
        0xft
        0xb0t
        0x54t
        0xbbt
        0x16t
    .end array-data

    .line 73
    :array_1
    .array-data 0x1
        0x52t
        0x9t
        0x6at
        0xd5t
        0x30t
        0x36t
        0xa5t
        0x38t
        0xbft
        0x40t
        0xa3t
        0x9et
        0x81t
        0xf3t
        0xd7t
        0xfbt
        0x7ct
        0xe3t
        0x39t
        0x82t
        0x9bt
        0x2ft
        0xfft
        0x87t
        0x34t
        0x8et
        0x43t
        0x44t
        0xc4t
        0xdet
        0xe9t
        0xcbt
        0x54t
        0x7bt
        0x94t
        0x32t
        0xa6t
        0xc2t
        0x23t
        0x3dt
        0xeet
        0x4ct
        0x95t
        0xbt
        0x42t
        0xfat
        0xc3t
        0x4et
        0x8t
        0x2et
        0xa1t
        0x66t
        0x28t
        0xd9t
        0x24t
        0xb2t
        0x76t
        0x5bt
        0xa2t
        0x49t
        0x6dt
        0x8bt
        0xd1t
        0x25t
        0x72t
        0xf8t
        0xf6t
        0x64t
        0x86t
        0x68t
        0x98t
        0x16t
        0xd4t
        0xa4t
        0x5ct
        0xcct
        0x5dt
        0x65t
        0xb6t
        0x92t
        0x6ct
        0x70t
        0x48t
        0x50t
        0xfdt
        0xedt
        0xb9t
        0xdat
        0x5et
        0x15t
        0x46t
        0x57t
        0xa7t
        0x8dt
        0x9dt
        0x84t
        0x90t
        0xd8t
        0xabt
        0x0t
        0x8ct
        0xbct
        0xd3t
        0xat
        0xf7t
        0xe4t
        0x58t
        0x5t
        0xb8t
        0xb3t
        0x45t
        0x6t
        0xd0t
        0x2ct
        0x1et
        0x8ft
        0xcat
        0x3ft
        0xft
        0x2t
        0xc1t
        0xaft
        0xbdt
        0x3t
        0x1t
        0x13t
        0x8at
        0x6bt
        0x3at
        0x91t
        0x11t
        0x41t
        0x4ft
        0x67t
        0xdct
        0xeat
        0x97t
        0xf2t
        0xcft
        0xcet
        0xf0t
        0xb4t
        0xe6t
        0x73t
        0x96t
        0xact
        0x74t
        0x22t
        0xe7t
        0xadt
        0x35t
        0x85t
        0xe2t
        0xf9t
        0x37t
        0xe8t
        0x1ct
        0x75t
        0xdft
        0x6et
        0x47t
        0xf1t
        0x1at
        0x71t
        0x1dt
        0x29t
        0xc5t
        0x89t
        0x6ft
        0xb7t
        0x62t
        0xet
        0xaat
        0x18t
        0xbet
        0x1bt
        0xfct
        0x56t
        0x3et
        0x4bt
        0xc6t
        0xd2t
        0x79t
        0x20t
        0x9at
        0xdbt
        0xc0t
        0xfet
        0x78t
        0xcdt
        0x5at
        0xf4t
        0x1ft
        0xddt
        0xa8t
        0x33t
        0x88t
        0x7t
        0xc7t
        0x31t
        0xb1t
        0x12t
        0x10t
        0x59t
        0x27t
        0x80t
        0xect
        0x5ft
        0x60t
        0x51t
        0x7ft
        0xa9t
        0x19t
        0xb5t
        0x4at
        0xdt
        0x2dt
        0xe5t
        0x7at
        0x9ft
        0x93t
        0xc9t
        0x9ct
        0xeft
        0xa0t
        0xe0t
        0x3bt
        0x4dt
        0xaet
        0x2at
        0xf5t
        0xb0t
        0xc8t
        0xebt
        0xbbt
        0x3ct
        0x83t
        0x53t
        0x99t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        0xbat
        0x77t
        0xd6t
        0x26t
        0xe1t
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 231
    return-void
.end method

.method private FFmulX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 131
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([[I)V
    .locals 13
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 401
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 402
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 403
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 404
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 406
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v0, v6, -0x1

    .local v0, r:I
    move v1, v0

    .end local v0           #r:I
    .local v1, r:I
    :goto_0
    if-le v1, v10, :cond_0

    .line 407
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 410
    .local v2, r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 413
    .local v3, r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 416
    .local v4, r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    add-int/lit8 v0, v1, -0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 419
    .local v5, r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 422
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 425
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 428
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, -0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_0

    .line 433
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 436
    .restart local v2       #r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 439
    .restart local v3       #r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 442
    .restart local v4       #r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 448
    .restart local v5       #r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 450
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 452
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 454
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 456
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 13
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 340
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 341
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 342
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 343
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 345
    const/4 v0, 0x1

    .local v0, r:I
    :goto_0
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 346
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 349
    .local v2, r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 352
    .local v3, r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 355
    .local v4, r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .local v1, r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 358
    .local v5, r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 361
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 364
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 367
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_0

    .line 372
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 375
    .restart local v2       #r0:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 378
    .restart local v3       #r1:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 381
    .restart local v4       #r2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 387
    .restart local v5       #r3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 389
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 391
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 393
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 396
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 11
    .parameter "key"
    .parameter "forEncryption"

    .prologue
    .line 169
    array-length v7, p1

    div-int/lit8 v0, v7, 0x4

    .line 172
    .local v0, KC:I
    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_1

    :cond_0
    mul-int/lit8 v7, v0, 0x4

    array-length v8, p1

    if-eq v7, v8, :cond_2

    .line 173
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Key length not 128/192/256 bits."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    :cond_2
    add-int/lit8 v7, v0, 0x6

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    .line 178
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 184
    .local v1, W:[[I
    const/4 v5, 0x0

    .line 185
    .local v5, t:I
    const/4 v2, 0x0

    .line 186
    .local v2, i:I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 187
    shr-int/lit8 v7, v5, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 189
    add-int/lit8 v2, v2, 0x4

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    :cond_3
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v4, v7, 0x2

    .line 198
    .local v4, k:I
    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_6

    .line 199
    add-int/lit8 v7, v2, -0x1

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v1, v7

    add-int/lit8 v8, v2, -0x1

    and-int/lit8 v8, v8, 0x3

    aget v6, v7, v8

    .line 200
    .local v6, temp:I
    rem-int v7, v2, v0

    if-nez v7, :cond_5

    .line 201
    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v7

    sget-object v8, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    div-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 206
    :cond_4
    :goto_2
    shr-int/lit8 v7, v2, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v2, 0x3

    sub-int v9, v2, v0

    shr-int/lit8 v9, v9, 0x2

    aget-object v9, v1, v9

    sub-int v10, v2, v0

    and-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v6

    aput v9, v7, v8

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_5
    const/4 v7, 0x6

    if-le v0, v7, :cond_4

    rem-int v7, v2, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 203
    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v6

    goto :goto_2

    .line 209
    .end local v6           #temp:I
    :cond_6
    if-nez p2, :cond_8

    .line 210
    const/4 v3, 0x1

    .local v3, j:I
    :goto_3
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v3, v7, :cond_8

    .line 211
    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    .line 212
    aget-object v7, v1, v3

    aget-object v8, v1, v3

    aget v8, v8, v2

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aput v8, v7, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 210
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 217
    .end local v3           #j:I
    :cond_8
    return-object v1
.end method

.method private inv_mcol(I)I
    .locals 7
    .parameter "x"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    .line 150
    .local v0, f2:I
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v1

    .line 151
    .local v1, f4:I
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    .line 152
    .local v2, f8:I
    xor-int v3, p1, v2

    .line 154
    .local v3, f9:I
    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    xor-int v5, v0, v3

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private mcol(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    .line 145
    .local v0, f2:I
    xor-int v1, p1, v0

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x18

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private packBlock([BI)V
    .locals 3
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 314
    move v0, p2

    .line 316
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 317
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 318
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 319
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 321
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 322
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 323
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 324
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 326
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 327
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 328
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 329
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 331
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 332
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 333
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 334
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 335
    return-void
.end method

.method private shift(II)I
    .locals 2
    .parameter "r"
    .parameter "shift"

    .prologue
    .line 121
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private subWord(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 158
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 290
    move v0, p2

    .line 292
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 293
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 294
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 295
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 297
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 298
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 299
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 300
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 302
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 303
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 304
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 305
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 307
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 308
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 309
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 310
    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 311
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 242
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 243
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 244
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    .line 245
    return-void

    .line 248
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

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
    .line 261
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 266
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 270
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 274
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 275
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    .line 276
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    .line 283
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 278
    :cond_3
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 279
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    .line 280
    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
