.class public Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;
.source "GOST3411Digest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final C2:[B


# instance fields
.field private C:[[B

.field private H:[B

.field private K:[B

.field private L:[B

.field private M:[B

.field S:[B

.field private Sum:[B

.field U:[B

.field V:[B

.field W:[B

.field a:[B

.field private byteCount:J

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field wS:[S

.field w_S:[S

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0xfft
        0x0t
        0xfft
        0x0t
        0xfft
        0x0t
        0xfft
        0xfft
        0x0t
        0xfft
        0x0t
        0xfft
        0x0t
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0x0t
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0x0t
        0x0t
        0x0t
        0xfft
        0xfft
        0x0t
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x20

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 17
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 19
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 23
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 100
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 135
    new-array v0, v3, [S

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 145
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 146
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 29
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    const-string v4, "D-A"

    invoke-static {v4}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 31
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;)V
    .locals 8
    .parameter "t"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x20

    const/4 v4, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 17
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 19
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 23
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 100
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 135
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 145
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 146
    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v2, 0x0

    const-string v3, "D-A"

    invoke-static {v3}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v5, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 41
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 43
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v5

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v6

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v0, v0, v7

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v7

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v7

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 53
    iget-wide v0, p1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 54
    return-void
.end method

.method private A([B)[B
    .locals 7
    .parameter "in"

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 117
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 118
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p1, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    invoke-static {v1, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-object p1
.end method

.method private E([B[BI[BI)V
    .locals 3
    .parameter "key"
    .parameter "s"
    .parameter "sOff"
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 129
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 131
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 132
    return-void
.end method

.method private LongToBytes(J[BI)V
    .locals 3
    .parameter "r"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 271
    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0x38

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 272
    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 273
    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 274
    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 275
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 276
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 277
    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x8

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 278
    long-to-int v0, p1

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 279
    return-void
.end method

.method private P([B)[B
    .locals 4
    .parameter "in"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 105
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 106
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x10

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 107
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    return-object v1
.end method

.method private cpyBytesToShort([B[S)V
    .locals 3
    .parameter "S"
    .parameter "wS"

    .prologue
    .line 282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 283
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method private cpyShortToBytes([S[B)V
    .locals 3
    .parameter "wS"
    .parameter "S"

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 289
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 290
    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-direct {p0, v0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->LongToBytes(J[BI)V

    .line 200
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, v4}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-virtual {p0, v0, v4}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 205
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    invoke-virtual {p0, v0, v4}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 206
    return-void
.end method

.method private fw([B)V
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    .line 138
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyBytesToShort([B[S)V

    .line 139
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v1, v1, v5

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v6

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v3, 0xc

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v4

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v0, v4

    .line 140
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-static {v0, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyShortToBytes([S[B)V

    .line 142
    return-void
.end method

.method private sumByteArray([B)V
    .locals 5
    .parameter "in"

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, carry:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 262
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int v2, v3, v0

    .line 264
    .local v2, sum:I
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 266
    ushr-int/lit8 v0, v2, 0x8

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v2           #sum:I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 209
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->finish()V

    .line 211
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 215
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock([BI)V
    .locals 10
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 149
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    const/16 v0, 0x20

    if-ge v7, v0, :cond_0

    .line 158
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v1, v7

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 164
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    const/4 v0, 0x4

    if-ge v6, v0, :cond_3

    .line 165
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v9

    .line 166
    .local v9, tmpA:[B
    const/4 v7, 0x0

    :goto_2
    const/16 v0, 0x20

    if-ge v7, v0, :cond_1

    .line 167
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v9, v7

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 169
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    .line 170
    const/4 v7, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v7, v0, :cond_2

    .line 171
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v1, v7

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 174
    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    mul-int/lit8 v3, v6, 0x8

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    mul-int/lit8 v5, v6, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    .end local v9           #tmpA:[B
    :cond_3
    const/4 v8, 0x0

    .local v8, n:I
    :goto_4
    const/16 v0, 0xc

    if-ge v8, v0, :cond_4

    .line 179
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 181
    :cond_4
    const/4 v8, 0x0

    :goto_5
    const/16 v0, 0x20

    if-ge v8, v0, :cond_5

    .line 182
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v1, v1, v8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 185
    :cond_5
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 187
    const/4 v8, 0x0

    :goto_6
    const/16 v0, 0x20

    if-ge v8, v0, :cond_6

    .line 188
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aget-byte v1, v1, v8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 190
    :cond_6
    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0x3d

    if-ge v8, v0, :cond_7

    .line 191
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 193
    :cond_7
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 230
    iput v4, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aput-byte v4, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    aput-byte v4, v1, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 239
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aput-byte v4, v1, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v3

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 242
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v3

    aput-byte v4, v1, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 244
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 245
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    aput-byte v4, v1, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 247
    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 248
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aput-byte v4, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 250
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 251
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    aput-byte v4, v1, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 254
    :cond_6
    sget-object v1, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-void
.end method

.method public update(B)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 66
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 69
    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 71
    :cond_0
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 72
    return-void
.end method

.method public update([BII)V
    .locals 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 75
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 76
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 78
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v4}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 87
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 88
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    goto :goto_1

    .line 92
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 93
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 94
    add-int/lit8 p2, p2, 0x1

    .line 95
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 97
    :cond_2
    return-void
.end method
