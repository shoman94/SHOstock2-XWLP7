.class public Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private final M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x20

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10
    .parameter "H"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 10
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 11
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 12
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    invoke-static {p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v5

    aput-object v5, v4, v9

    .line 14
    const/4 v1, 0x4

    .local v1, j:I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 15
    new-array v3, v7, [I

    .line 16
    .local v3, tmp:[I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 19
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aput-object v3, v4, v1

    .line 14
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v3           #tmp:[I
    :cond_0
    new-array v3, v7, [I

    .line 24
    .restart local v3       #tmp:[I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 27
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v9

    .line 30
    const/4 v1, 0x4

    :goto_1
    if-lt v1, v8, :cond_1

    .line 31
    new-array v3, v7, [I

    .line 32
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 35
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v6

    aput-object v3, v4, v1

    .line 30
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 40
    .local v0, i:I
    :cond_2
    const/4 v1, 0x2

    :goto_2
    const/16 v4, 0x10

    if-ge v1, v4, :cond_4

    .line 41
    const/4 v2, 0x1

    .local v2, k:I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 42
    new-array v3, v7, [I

    .line 43
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    .line 46
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    add-int v5, v1, v2

    aput-object v3, v4, v5

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 40
    :cond_3
    add-int/2addr v1, v1

    goto :goto_2

    .line 50
    .end local v2           #k:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    .line 51
    return-void

    .line 54
    :cond_5
    if-le v0, v8, :cond_2

    .line 55
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    new-array v5, v7, [I

    aput-object v5, v4, v6

    .line 56
    const/16 v1, 0x8

    :goto_4
    if-lez v1, :cond_2

    .line 57
    new-array v3, v7, [I

    .line 58
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v4, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    .line 61
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    .line 56
    shr-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public multiplyH([B)V
    .locals 10
    .parameter "x"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    new-array v2, v9, [I

    .line 71
    .local v2, z:[I
    const/16 v0, 0xf

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 73
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    aget-object v1, v3, v4

    .line 74
    .local v1, m:[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 75
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 76
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 77
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 79
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-object v1, v3, v4

    .line 80
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 81
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 82
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 83
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 71
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v1           #m:[I
    :cond_0
    aget v3, v2, v5

    invoke-static {v3, p1, v5}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 87
    aget v3, v2, v6

    invoke-static {v3, p1, v9}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 88
    aget v3, v2, v7

    const/16 v4, 0x8

    invoke-static {v3, p1, v4}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 89
    aget v3, v2, v8

    const/16 v4, 0xc

    invoke-static {v3, p1, v4}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 90
    return-void
.end method
