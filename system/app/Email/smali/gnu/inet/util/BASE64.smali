.class public final Lgnu/inet/util/BASE64;
.super Ljava/lang/Object;
.source "BASE64.java"


# static fields
.field private static final dst:[B

.field private static final src:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/inet/util/BASE64;->src:[B

    .line 62
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lgnu/inet/util/BASE64;->dst:[B

    move v1, v0

    .line 63
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 65
    sget-object v2, Lgnu/inet/util/BASE64;->dst:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    :goto_1
    sget-object v1, Lgnu/inet/util/BASE64;->src:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    sget-object v1, Lgnu/inet/util/BASE64;->dst:[B

    sget-object v2, Lgnu/inet/util/BASE64;->src:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    return-void

    .line 49
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static encode([B)[B
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    .line 85
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v3, v0, [B

    move v0, v1

    move v2, v1

    .line 86
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 88
    array-length v4, p0

    sub-int/2addr v4, v2

    .line 89
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 91
    aget-byte v4, p0, v2

    .line 94
    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lgnu/inet/util/BASE64;->src:[B

    ushr-int/lit8 v7, v4, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v3, v0

    .line 95
    add-int/lit8 v0, v5, 0x1

    sget-object v6, Lgnu/inet/util/BASE64;->src:[B

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    .line 86
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 97
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 99
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    .line 101
    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lgnu/inet/util/BASE64;->src:[B

    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v3, v0

    .line 102
    add-int/lit8 v7, v6, 0x1

    sget-object v0, Lgnu/inet/util/BASE64;->src:[B

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v4, v8

    aget-byte v0, v0, v4

    aput-byte v0, v3, v6

    .line 103
    add-int/lit8 v0, v7, 0x1

    sget-object v4, Lgnu/inet/util/BASE64;->src:[B

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3c

    add-int/lit8 v5, v5, 0x0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v7

    goto :goto_1

    .line 107
    :cond_1
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    .line 108
    add-int/lit8 v7, v0, 0x1

    sget-object v8, Lgnu/inet/util/BASE64;->src:[B

    ushr-int/lit8 v9, v4, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v3, v0

    .line 109
    add-int/lit8 v0, v7, 0x1

    sget-object v8, Lgnu/inet/util/BASE64;->src:[B

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0xf

    add-int/2addr v4, v9

    aget-byte v4, v8, v4

    aput-byte v4, v3, v7

    .line 110
    add-int/lit8 v4, v0, 0x1

    sget-object v7, Lgnu/inet/util/BASE64;->src:[B

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3c

    ushr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3

    add-int/2addr v5, v8

    aget-byte v5, v7, v5

    aput-byte v5, v3, v0

    .line 111
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lgnu/inet/util/BASE64;->src:[B

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    goto :goto_1

    .line 114
    :cond_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 116
    new-array v2, v0, [B

    .line 117
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 124
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method
