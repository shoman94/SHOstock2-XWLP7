.class public Lmyorg/bouncycastle/crypto/macs/VMPCMac;
.super Ljava/lang/Object;
.source "VMPCMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private P:[B

.field private T:[B

.field private g:B

.field private n:B

.field private s:B

.field private workingIV:[B

.field private workingKey:[B

.field private x1:B

.field private x2:B

.field private x3:B

.field private x4:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    .line 15
    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    return-void
.end method

.method private initKey([B[B)V
    .locals 9
    .parameter "keyBytes"
    .parameter "ivBytes"

    .prologue
    const/16 v8, 0x300

    const/16 v5, 0x100

    const/4 v7, 0x0

    .line 103
    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 104
    new-array v3, v5, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 106
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v1, 0x0

    .local v1, m:I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 109
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 110
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 111
    .local v2, temp:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 112
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v2           #temp:B
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    .line 115
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p2

    rem-int v5, v1, v5

    aget-byte v5, p2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 116
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 117
    .restart local v2       #temp:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 118
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v2           #temp:B
    :cond_2
    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    .line 121
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 10
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x14

    .line 26
    const/4 v3, 0x1

    .local v3, r:I
    :goto_0
    const/16 v5, 0x19

    if-ge v3, v5, :cond_0

    .line 27
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 29
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    iget-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    .line 30
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    iget-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    .line 31
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    iget-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    .line 32
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    iget-byte v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    .line 33
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v6, v6, 0x1f

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 34
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0x1f

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v8, v8, 0x1

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 35
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x1f

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 36
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x1f

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v8, v8, 0x3

    and-int/lit8 v8, v8, 0x1f

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 37
    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    .line 39
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v5, v6

    .line 40
    .local v4, temp:B
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 41
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aput-byte v4, v5, v6

    .line 42
    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 46
    .end local v4           #temp:B
    :cond_0
    const/4 v2, 0x0

    .local v2, m:I
    :goto_1
    const/16 v5, 0x300

    if-ge v2, v5, :cond_1

    .line 47
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v8, v2, 0xff

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    and-int/lit8 v8, v2, 0x1f

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 48
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v2, 0xff

    aget-byte v4, v5, v6

    .line 49
    .restart local v4       #temp:B
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v2, 0xff

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 50
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aput-byte v4, v5, v6

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v4           #temp:B
    :cond_1
    new-array v0, v9, [B

    .line 55
    .local v0, M:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v9, :cond_2

    .line 56
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v8, v1, 0xff

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    iput-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 57
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v0, v1

    .line 59
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v4, v5, v6

    .line 60
    .restart local v4       #temp:B
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    and-int/lit16 v6, v1, 0xff

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v8, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 61
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v6, v6, 0xff

    aput-byte v4, v5, v6

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    .end local v4           #temp:B
    :cond_2
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->reset()V

    .line 67
    array-length v5, v0

    return v5
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x14

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC-MAC Init parameters must include an IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 83
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 84
    .local v0, ivParams:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 86
    .local v1, key:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC-MAC Init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingIV:[B

    .line 92
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingIV:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingIV:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingIV:[B

    array-length v2, v2

    const/16 v3, 0x300

    if-le v2, v3, :cond_3

    .line 93
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC-MAC requires 1 to 768 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingKey:[B

    .line 98
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->reset()V

    .line 100
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingKey:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->workingIV:[B

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->initKey([B[B)V

    .line 125
    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    .line 126
    new-array v1, v4, [B

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 128
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    aput-byte v3, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    .line 134
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v2, p1

    int-to-byte v0, v2

    .line 136
    .local v0, c:B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    .line 137
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    .line 138
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    .line 139
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    .line 140
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x1:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 141
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x2:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 142
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x3:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 143
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->T:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->x4:B

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 144
    iget-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->g:B

    .line 146
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v1, v2, v3

    .line 147
    .local v1, temp:B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v5, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 148
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->P:[B

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->s:B

    and-int/lit16 v3, v3, 0xff

    aput-byte v1, v2, v3

    .line 149
    iget-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->n:B

    .line 150
    return-void
.end method

.method public update([BII)V
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 154
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 155
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 159
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/crypto/macs/VMPCMac;->update(B)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method
