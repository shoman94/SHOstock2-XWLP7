.class public Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables64kGCMMultiplier.java"

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
    const/16 v0, 0x10

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9
    .parameter "H"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 10
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    new-array v5, v8, [I

    aput-object v5, v4, v7

    .line 11
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    const/16 v5, 0x80

    invoke-static {p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v6

    aput-object v6, v4, v5

    .line 12
    const/16 v1, 0x40

    .local v1, j:I
    :goto_0
    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    .line 13
    new-array v3, v8, [I

    .line 14
    .local v3, tmp:[I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    add-int v5, v1, v1

    aget-object v4, v4, v5

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 17
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    aput-object v3, v4, v1

    .line 12
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v3           #tmp:[I
    :cond_0
    const/4 v0, 0x0

    .line 22
    .local v0, i:I
    :cond_1
    const/4 v1, 0x2

    :goto_1
    const/16 v4, 0x100

    if-ge v1, v4, :cond_3

    .line 23
    const/4 v2, 0x1

    .local v2, k:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 24
    new-array v3, v8, [I

    .line 25
    .restart local v3       #tmp:[I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    .line 28
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    add-int v5, v1, v2

    aput-object v3, v4, v5

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    .end local v3           #tmp:[I
    :cond_2
    add-int/2addr v1, v1

    goto :goto_1

    .line 32
    .end local v2           #k:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    .line 33
    return-void

    .line 36
    :cond_4
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    new-array v5, v8, [I

    aput-object v5, v4, v7

    .line 37
    const/16 v1, 0x80

    :goto_3
    if-lez v1, :cond_1

    .line 38
    new-array v3, v8, [I

    .line 39
    .restart local v3       #tmp:[I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v4, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {v3}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I)V

    .line 42
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    .line 37
    shr-int/lit8 v1, v1, 0x1

    goto :goto_3
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

    .line 50
    new-array v2, v9, [I

    .line 51
    .local v2, z:[I
    const/16 v0, 0xf

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v0

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-object v1, v3, v4

    .line 54
    .local v1, m:[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 55
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 56
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 57
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 60
    .end local v1           #m:[I
    :cond_0
    aget v3, v2, v5

    invoke-static {v3, p1, v5}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 61
    aget v3, v2, v6

    invoke-static {v3, p1, v9}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 62
    aget v3, v2, v7

    const/16 v4, 0x8

    invoke-static {v3, p1, v4}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 63
    aget v3, v2, v8

    const/16 v4, 0xc

    invoke-static {v3, p1, v4}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 64
    return-void
.end method
