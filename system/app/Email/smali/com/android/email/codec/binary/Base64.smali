.class public Lcom/android/email/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 71
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    .line 91
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/email/codec/binary/Base64;->base64ToInt:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 71
    nop

    :array_1
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

    .line 91
    :array_2
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 184
    const/16 v0, 0x4c

    sget-object v1, Lcom/android/email/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lcom/android/email/codec/binary/Base64;-><init>(I[B)V

    .line 185
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "lineLength"

    .prologue
    .line 203
    sget-object v0, Lcom/android/email/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/android/email/codec/binary/Base64;-><init>(I[B)V

    .line 204
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 5
    .parameter "lineLength"
    .parameter "lineSeparator"

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/android/email/codec/binary/Base64;->lineLength:I

    .line 227
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    .line 228
    iget-object v2, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    if-lez p1, :cond_0

    .line 230
    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/email/codec/binary/Base64;->encodeSize:I

    .line 234
    :goto_0
    iget v2, p0, Lcom/android/email/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/email/codec/binary/Base64;->decodeSize:I

    .line 235
    invoke-static {p2}, Lcom/android/email/codec/binary/Base64;->containsBase64Byte([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v0, sep:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    .end local v0           #sep:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/email/codec/binary/Base64;->encodeSize:I

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #sep:Ljava/lang/String;
    goto :goto_1

    .line 245
    .end local v0           #sep:Ljava/lang/String;
    .end local v1           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2
    .parameter "arrayOctet"

    .prologue
    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 511
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/android/email/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const/4 v1, 0x1

    .line 515
    :goto_1
    return v1

    .line 510
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBase64([B)[B
    .locals 7
    .parameter "base64Data"

    .prologue
    const/4 v6, 0x0

    .line 631
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    move-object v4, p0

    .line 646
    :goto_0
    return-object v4

    .line 634
    :cond_1
    new-instance v0, Lcom/android/email/codec/binary/Base64;

    invoke-direct {v0}, Lcom/android/email/codec/binary/Base64;-><init>()V

    .line 636
    .local v0, b64:Lcom/android/email/codec/binary/Base64;
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-long v2, v5

    .line 637
    .local v2, len:J
    long-to-int v5, v2

    new-array v1, v5, [B

    .line 638
    .local v1, buf:[B
    array-length v5, v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/android/email/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 639
    array-length v5, p0

    invoke-virtual {v0, p0, v6, v5}, Lcom/android/email/codec/binary/Base64;->decode([BII)V

    .line 640
    const/4 v5, -0x1

    invoke-virtual {v0, p0, v6, v5}, Lcom/android/email/codec/binary/Base64;->decode([BII)V

    .line 644
    iget v5, v0, Lcom/android/email/codec/binary/Base64;->pos:I

    new-array v4, v5, [B

    .line 645
    .local v4, result:[B
    array-length v5, v4

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/email/codec/binary/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static encodeBase64([BZ)[B
    .locals 13
    .parameter "binaryData"
    .parameter "isChunked"

    .prologue
    const-wide/16 v11, 0x4c

    const-wide/16 v8, 0x4

    const/4 v10, 0x0

    .line 579
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    move-object v1, p0

    .line 621
    :cond_1
    :goto_0
    return-object v1

    .line 582
    :cond_2
    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/email/codec/binary/Base64;

    invoke-direct {v0}, Lcom/android/email/codec/binary/Base64;-><init>()V

    .line 584
    .local v0, b64:Lcom/android/email/codec/binary/Base64;
    :goto_1
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    int-to-long v2, v6

    .line 585
    .local v2, len:J
    rem-long v4, v2, v8

    .line 586
    .local v4, mod:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 587
    sub-long v6, v8, v4

    add-long/2addr v2, v6

    .line 603
    :cond_3
    if-eqz p1, :cond_4

    .line 604
    add-long v6, v2, v11

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    div-long/2addr v6, v11

    sget-object v8, Lcom/android/email/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 607
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 608
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    .end local v0           #b64:Lcom/android/email/codec/binary/Base64;
    .end local v2           #len:J
    .end local v4           #mod:J
    :cond_5
    new-instance v0, Lcom/android/email/codec/binary/Base64;

    invoke-direct {v0, v10}, Lcom/android/email/codec/binary/Base64;-><init>(I)V

    goto :goto_1

    .line 612
    .restart local v0       #b64:Lcom/android/email/codec/binary/Base64;
    .restart local v2       #len:J
    .restart local v4       #mod:J
    :cond_6
    long-to-int v6, v2

    new-array v1, v6, [B

    .line 613
    .local v1, buf:[B
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/android/email/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 614
    array-length v6, p0

    invoke-virtual {v0, p0, v10, v6}, Lcom/android/email/codec/binary/Base64;->encode([BII)V

    .line 615
    const/4 v6, -0x1

    invoke-virtual {v0, p0, v10, v6}, Lcom/android/email/codec/binary/Base64;->encode([BII)V

    .line 618
    iget-object v6, v0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eq v6, v1, :cond_1

    .line 619
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/android/email/codec/binary/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static isBase64(B)Z
    .locals 2
    .parameter "octet"

    .prologue
    .line 480
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lcom/android/email/codec/binary/Base64;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/android/email/codec/binary/Base64;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-nez v1, :cond_0

    .line 268
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    .line 269
    iput v3, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    .line 270
    iput v3, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 273
    .local v0, b:[B
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget-object v2, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iput-object v0, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v1, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 551
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/email/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method decode([BII)V
    .locals 8
    .parameter "in"
    .parameter "inPos"
    .parameter "inAvail"

    .prologue
    const/4 v7, 0x1

    .line 429
    iget-boolean v4, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_0

    .line 470
    :goto_0
    return-void

    .line 432
    :cond_0
    if-gez p3, :cond_1

    .line 433
    iput-boolean v7, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    .line 435
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    move v2, p2

    .end local p2
    .local v2, inPos:I
    :goto_1
    if-ge v1, p3, :cond_6

    .line 436
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->decodeSize:I

    if-ge v4, v5, :cond_3

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/android/email/codec/binary/Base64;->resizeBuf()V

    .line 439
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inPos:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 440
    .local v0, b:B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 441
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    .line 442
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 453
    :goto_2
    iput-boolean v7, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    goto :goto_0

    .line 444
    :pswitch_0
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    .line 445
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 448
    :pswitch_1
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 449
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 456
    :cond_4
    if-ltz v0, :cond_5

    sget-object v4, Lcom/android/email/codec/binary/Base64;->base64ToInt:[B

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 457
    sget-object v4, Lcom/android/email/codec/binary/Base64;->base64ToInt:[B

    aget-byte v3, v4, v0

    .line 458
    .local v3, result:I
    if-ltz v3, :cond_5

    .line 459
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    .line 460
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/email/codec/binary/Base64;->x:I

    .line 461
    iget v4, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_5

    .line 462
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 463
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 464
    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 435
    .end local v3           #result:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #inPos:I
    goto/16 :goto_1

    .end local v0           #b:B
    :cond_6
    move p2, v2

    .line 470
    .end local v2           #inPos:I
    .restart local p2
    goto/16 :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 564
    invoke-static {p1}, Lcom/android/email/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 735
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/email/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 9
    .parameter "in"
    .parameter "inPos"
    .parameter "inAvail"

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 347
    iget-boolean v3, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    if-eqz v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    if-gez p3, :cond_4

    .line 354
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    .line 355
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/android/email/codec/binary/Base64;->resizeBuf()V

    .line 358
    :cond_3
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 373
    :goto_1
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    goto :goto_0

    .line 360
    :pswitch_0
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 361
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 362
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    .line 363
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 367
    :pswitch_1
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 368
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 369
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 370
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 378
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    move v2, p2

    .end local p2
    .local v2, inPos:I
    :goto_2
    if-ge v1, p3, :cond_9

    .line 379
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_6

    .line 380
    :cond_5
    invoke-direct {p0}, Lcom/android/email/codec/binary/Base64;->resizeBuf()V

    .line 382
    :cond_6
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    .line 383
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inPos:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 384
    .local v0, b:I
    if-gez v0, :cond_7

    .line 385
    add-int/lit16 v0, v0, 0x100

    .line 387
    :cond_7
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->x:I

    .line 388
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->modulus:I

    if-nez v3, :cond_8

    .line 389
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 390
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 391
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 392
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    sget-object v5, Lcom/android/email/codec/binary/Base64;->intToBase64:[B

    iget v6, p0, Lcom/android/email/codec/binary/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 393
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->currentLinePos:I

    .line 394
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_8

    iget v3, p0, Lcom/android/email/codec/binary/Base64;->lineLength:I

    iget v4, p0, Lcom/android/email/codec/binary/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_8

    .line 395
    iget-object v3, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v5, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget v3, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/android/email/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    .line 397
    iput v7, p0, Lcom/android/email/codec/binary/Base64;->currentLinePos:I

    .line 378
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #inPos:I
    goto/16 :goto_2

    .end local v0           #b:I
    :cond_9
    move p2, v2

    .end local v2           #inPos:I
    .restart local p2
    goto/16 :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 749
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/email/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method readResults([BII)I
    .locals 4
    .parameter "b"
    .parameter "bPos"
    .parameter "bAvail"

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/android/email/codec/binary/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 293
    .local v0, len:I
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    if-eq v1, p1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    iget v2, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v1, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    .line 296
    iget v1, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    iget v2, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    if-lt v1, v2, :cond_0

    .line 297
    iput-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    .line 306
    .end local v0           #len:I
    :cond_0
    :goto_0
    return v0

    .line 302
    .restart local v0       #len:I
    :cond_1
    iput-object v3, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    goto :goto_0

    .line 306
    .end local v0           #len:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/email/codec/binary/Base64;->eof:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setInitialBuffer([BII)V
    .locals 1
    .parameter "out"
    .parameter "outPos"
    .parameter "outAvail"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 323
    iput-object p1, p0, Lcom/android/email/codec/binary/Base64;->buf:[B

    .line 324
    iput p2, p0, Lcom/android/email/codec/binary/Base64;->pos:I

    .line 325
    iput p2, p0, Lcom/android/email/codec/binary/Base64;->readPos:I

    .line 327
    :cond_0
    return-void
.end method
