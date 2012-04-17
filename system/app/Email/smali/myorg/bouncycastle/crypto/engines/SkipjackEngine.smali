.class public Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;
.super Ljava/lang/Object;
.source "SkipjackEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field static ftable:[S


# instance fields
.field private encrypting:Z

.field private key0:[I

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    return-void

    :array_0
    .array-data 0x2
        0xa3t 0x0t
        0xd7t 0x0t
        0x9t 0x0t
        0x83t 0x0t
        0xf8t 0x0t
        0x48t 0x0t
        0xf6t 0x0t
        0xf4t 0x0t
        0xb3t 0x0t
        0x21t 0x0t
        0x15t 0x0t
        0x78t 0x0t
        0x99t 0x0t
        0xb1t 0x0t
        0xaft 0x0t
        0xf9t 0x0t
        0xe7t 0x0t
        0x2dt 0x0t
        0x4dt 0x0t
        0x8at 0x0t
        0xcet 0x0t
        0x4ct 0x0t
        0xcat 0x0t
        0x2et 0x0t
        0x52t 0x0t
        0x95t 0x0t
        0xd9t 0x0t
        0x1et 0x0t
        0x4et 0x0t
        0x38t 0x0t
        0x44t 0x0t
        0x28t 0x0t
        0xat 0x0t
        0xdft 0x0t
        0x2t 0x0t
        0xa0t 0x0t
        0x17t 0x0t
        0xf1t 0x0t
        0x60t 0x0t
        0x68t 0x0t
        0x12t 0x0t
        0xb7t 0x0t
        0x7at 0x0t
        0xc3t 0x0t
        0xe9t 0x0t
        0xfat 0x0t
        0x3dt 0x0t
        0x53t 0x0t
        0x96t 0x0t
        0x84t 0x0t
        0x6bt 0x0t
        0xbat 0x0t
        0xf2t 0x0t
        0x63t 0x0t
        0x9at 0x0t
        0x19t 0x0t
        0x7ct 0x0t
        0xaet 0x0t
        0xe5t 0x0t
        0xf5t 0x0t
        0xf7t 0x0t
        0x16t 0x0t
        0x6at 0x0t
        0xa2t 0x0t
        0x39t 0x0t
        0xb6t 0x0t
        0x7bt 0x0t
        0xft 0x0t
        0xc1t 0x0t
        0x93t 0x0t
        0x81t 0x0t
        0x1bt 0x0t
        0xeet 0x0t
        0xb4t 0x0t
        0x1at 0x0t
        0xeat 0x0t
        0xd0t 0x0t
        0x91t 0x0t
        0x2ft 0x0t
        0xb8t 0x0t
        0x55t 0x0t
        0xb9t 0x0t
        0xdat 0x0t
        0x85t 0x0t
        0x3ft 0x0t
        0x41t 0x0t
        0xbft 0x0t
        0xe0t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x80t 0x0t
        0x5ft 0x0t
        0x66t 0x0t
        0xbt 0x0t
        0xd8t 0x0t
        0x90t 0x0t
        0x35t 0x0t
        0xd5t 0x0t
        0xc0t 0x0t
        0xa7t 0x0t
        0x33t 0x0t
        0x6t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x45t 0x0t
        0x0t 0x0t
        0x94t 0x0t
        0x56t 0x0t
        0x6dt 0x0t
        0x98t 0x0t
        0x9bt 0x0t
        0x76t 0x0t
        0x97t 0x0t
        0xfct 0x0t
        0xb2t 0x0t
        0xc2t 0x0t
        0xb0t 0x0t
        0xfet 0x0t
        0xdbt 0x0t
        0x20t 0x0t
        0xe1t 0x0t
        0xebt 0x0t
        0xd6t 0x0t
        0xe4t 0x0t
        0xddt 0x0t
        0x47t 0x0t
        0x4at 0x0t
        0x1dt 0x0t
        0x42t 0x0t
        0xedt 0x0t
        0x9et 0x0t
        0x6et 0x0t
        0x49t 0x0t
        0x3ct 0x0t
        0xcdt 0x0t
        0x43t 0x0t
        0x27t 0x0t
        0xd2t 0x0t
        0x7t 0x0t
        0xd4t 0x0t
        0xdet 0x0t
        0xc7t 0x0t
        0x67t 0x0t
        0x18t 0x0t
        0x89t 0x0t
        0xcbt 0x0t
        0x30t 0x0t
        0x1ft 0x0t
        0x8dt 0x0t
        0xc6t 0x0t
        0x8ft 0x0t
        0xaat 0x0t
        0xc8t 0x0t
        0x74t 0x0t
        0xdct 0x0t
        0xc9t 0x0t
        0x5dt 0x0t
        0x5ct 0x0t
        0x31t 0x0t
        0xa4t 0x0t
        0x70t 0x0t
        0x88t 0x0t
        0x61t 0x0t
        0x2ct 0x0t
        0x9ft 0x0t
        0xdt 0x0t
        0x2bt 0x0t
        0x87t 0x0t
        0x50t 0x0t
        0x82t 0x0t
        0x54t 0x0t
        0x64t 0x0t
        0x26t 0x0t
        0x7dt 0x0t
        0x3t 0x0t
        0x40t 0x0t
        0x34t 0x0t
        0x4bt 0x0t
        0x1ct 0x0t
        0x73t 0x0t
        0xd1t 0x0t
        0xc4t 0x0t
        0xfdt 0x0t
        0x3bt 0x0t
        0xcct 0x0t
        0xfbt 0x0t
        0x7ft 0x0t
        0xabt 0x0t
        0xe6t 0x0t
        0x3et 0x0t
        0x5bt 0x0t
        0xa5t 0x0t
        0xadt 0x0t
        0x4t 0x0t
        0x23t 0x0t
        0x9ct 0x0t
        0x14t 0x0t
        0x51t 0x0t
        0x22t 0x0t
        0xf0t 0x0t
        0x29t 0x0t
        0x79t 0x0t
        0x71t 0x0t
        0x7et 0x0t
        0xfft 0x0t
        0x8ct 0x0t
        0xet 0x0t
        0xe2t 0x0t
        0xct 0x0t
        0xeft 0x0t
        0xbct 0x0t
        0x72t 0x0t
        0x75t 0x0t
        0x6ft 0x0t
        0x37t 0x0t
        0xa1t 0x0t
        0xect 0x0t
        0xd3t 0x0t
        0x8et 0x0t
        0x62t 0x0t
        0x8bt 0x0t
        0x86t 0x0t
        0x10t 0x0t
        0xe8t 0x0t
        0x8t 0x0t
        0x77t 0x0t
        0x11t 0x0t
        0xbet 0x0t
        0x92t 0x0t
        0x4ft 0x0t
        0x24t 0x0t
        0xc5t 0x0t
        0x32t 0x0t
        0x36t 0x0t
        0x9dt 0x0t
        0xcft 0x0t
        0xf3t 0x0t
        0xa6t 0x0t
        0xbbt 0x0t
        0xact 0x0t
        0x5et 0x0t
        0x6ct 0x0t
        0xa9t 0x0t
        0x13t 0x0t
        0x57t 0x0t
        0x25t 0x0t
        0xb5t 0x0t
        0xe3t 0x0t
        0xbdt 0x0t
        0xa8t 0x0t
        0x3at 0x0t
        0x1t 0x0t
        0x5t 0x0t
        0x59t 0x0t
        0x2at 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g(II)I
    .locals 8
    .parameter "k"
    .parameter "w"

    .prologue
    .line 113
    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v0, v6, 0xff

    .line 114
    .local v0, g1:I
    and-int/lit16 v1, p2, 0xff

    .line 116
    .local v1, g2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v7, v7, p1

    xor-int/2addr v7, v1

    aget-short v6, v6, v7

    xor-int v2, v6, v0

    .line 117
    .local v2, g3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v7, v7, p1

    xor-int/2addr v7, v2

    aget-short v6, v6, v7

    xor-int v3, v6, v1

    .line 118
    .local v3, g4:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v7, v7, p1

    xor-int/2addr v7, v3

    aget-short v6, v6, v7

    xor-int v4, v6, v2

    .line 119
    .local v4, g5:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v7, v7, p1

    xor-int/2addr v7, v4

    aget-short v6, v6, v7

    xor-int v5, v6, v3

    .line 121
    .local v5, g6:I
    shl-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v5

    return v6
.end method

.method private h(II)I
    .locals 8
    .parameter "k"
    .parameter "w"

    .prologue
    .line 170
    and-int/lit16 v0, p2, 0xff

    .line 171
    .local v0, h1:I
    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v1, v6, 0xff

    .line 173
    .local v1, h2:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v7, v7, p1

    xor-int/2addr v7, v1

    aget-short v6, v6, v7

    xor-int v2, v6, v0

    .line 174
    .local v2, h3:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v7, v7, p1

    xor-int/2addr v7, v2

    aget-short v6, v6, v7

    xor-int v3, v6, v1

    .line 175
    .local v3, h4:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v7, v7, p1

    xor-int/2addr v7, v3

    aget-short v6, v6, v7

    xor-int v4, v6, v2

    .line 176
    .local v4, h5:I
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v7, v7, p1

    xor-int/2addr v7, v4

    aget-short v6, v6, v7

    xor-int v5, v6, v3

    .line 178
    .local v5, h6:I
    shl-int/lit8 v6, v5, 0x8

    add-int/2addr v6, v4

    return v6
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .locals 11
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v10, 0x8

    .line 182
    add-int/lit8 v8, p2, 0x0

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v5, v8, v9

    .line 183
    .local v5, w2:I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v4, v8, v9

    .line 184
    .local v4, w1:I
    add-int/lit8 v8, p2, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v7, v8, v9

    .line 185
    .local v7, w4:I
    add-int/lit8 v8, p2, 0x6

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v6, v8, v9

    .line 187
    .local v6, w3:I
    const/16 v1, 0x1f

    .line 189
    .local v1, k:I
    const/4 v2, 0x0

    .local v2, t:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_0

    .line 191
    move v3, v7

    .line 192
    .local v3, tmp:I
    move v7, v6

    .line 193
    move v6, v5

    .line 194
    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v5

    .line 195
    xor-int v8, v5, v3

    add-int/lit8 v9, v1, 0x1

    xor-int v4, v8, v9

    .line 196
    add-int/lit8 v1, v1, -0x1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    .end local v3           #tmp:I
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 200
    move v3, v7

    .line 201
    .restart local v3       #tmp:I
    move v7, v6

    .line 202
    xor-int v8, v4, v5

    add-int/lit8 v9, v1, 0x1

    xor-int v6, v8, v9

    .line 203
    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v5

    .line 204
    move v4, v3

    .line 205
    add-int/lit8 v1, v1, -0x1

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    .end local v3           #tmp:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0           #i:I
    :cond_2
    add-int/lit8 v8, p4, 0x0

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 210
    add-int/lit8 v8, p4, 0x1

    int-to-byte v9, v5

    aput-byte v9, p3, v8

    .line 211
    add-int/lit8 v8, p4, 0x2

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 212
    add-int/lit8 v8, p4, 0x3

    int-to-byte v9, v4

    aput-byte v9, p3, v8

    .line 213
    add-int/lit8 v8, p4, 0x4

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 214
    add-int/lit8 v8, p4, 0x5

    int-to-byte v9, v7

    aput-byte v9, p3, v8

    .line 215
    add-int/lit8 v8, p4, 0x6

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 216
    add-int/lit8 v8, p4, 0x7

    int-to-byte v9, v6

    aput-byte v9, p3, v8

    .line 218
    return v10
.end method

.method public encryptBlock([BI[BI)I
    .locals 11
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v10, 0x8

    .line 125
    add-int/lit8 v8, p2, 0x0

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v4, v8, v9

    .line 126
    .local v4, w1:I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v5, v8, v9

    .line 127
    .local v5, w2:I
    add-int/lit8 v8, p2, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v6, v8, v9

    .line 128
    .local v6, w3:I
    add-int/lit8 v8, p2, 0x6

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v7, v8, v9

    .line 130
    .local v7, w4:I
    const/4 v1, 0x0

    .line 132
    .local v1, k:I
    const/4 v2, 0x0

    .local v2, t:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_0

    .line 134
    move v3, v7

    .line 135
    .local v3, tmp:I
    move v7, v6

    .line 136
    move v6, v5

    .line 137
    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    .line 138
    xor-int v8, v5, v3

    add-int/lit8 v9, v1, 0x1

    xor-int v4, v8, v9

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    .end local v3           #tmp:I
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 143
    move v3, v7

    .line 144
    .restart local v3       #tmp:I
    move v7, v6

    .line 145
    xor-int v8, v4, v5

    add-int/lit8 v9, v1, 0x1

    xor-int v6, v8, v9

    .line 146
    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    .line 147
    move v4, v3

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    .end local v3           #tmp:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0           #i:I
    :cond_2
    add-int/lit8 v8, p4, 0x0

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 153
    add-int/lit8 v8, p4, 0x1

    int-to-byte v9, v4

    aput-byte v9, p3, v8

    .line 154
    add-int/lit8 v8, p4, 0x2

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 155
    add-int/lit8 v8, p4, 0x3

    int-to-byte v9, v5

    aput-byte v9, p3, v8

    .line 156
    add-int/lit8 v8, p4, 0x4

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 157
    add-int/lit8 v8, p4, 0x5

    int-to-byte v9, v6

    aput-byte v9, p3, v8

    .line 158
    add-int/lit8 v8, p4, 0x6

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 159
    add-int/lit8 v8, p4, 0x7

    int-to-byte v9, v7

    aput-byte v9, p3, v8

    .line 161
    return v10
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "SKIPJACK"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "encrypting"
    .parameter "params"

    .prologue
    const/16 v4, 0x20

    .line 49
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter passed to SKIPJACK init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 56
    .local v1, keyBytes:[B
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    .line 57
    new-array v2, v4, [I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    .line 58
    new-array v2, v4, [I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    .line 59
    new-array v2, v4, [I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    .line 60
    new-array v2, v4, [I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 67
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    mul-int/lit8 v3, v0, 0x4

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 68
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 69
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 70
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 83
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SKIPJACK engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 88
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 92
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->encryptBlock([BI[BI)I

    .line 101
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 98
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;->decryptBlock([BI[BI)I

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
