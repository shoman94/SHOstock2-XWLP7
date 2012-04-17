.class public Lcom/seven/Z7/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/seven/Z7/util/Base64;->encodingTable:[B

    .line 92
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    .line 94
    const/16 v0, 0x41

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 95
    sget-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 103
    sget-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_2
    sget-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 107
    sget-object v1, Lcom/seven/Z7/util/Base64;->decodingTable:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 108
    return-void

    .line 8
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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
