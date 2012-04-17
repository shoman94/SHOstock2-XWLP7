.class public Lmyorg/bouncycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source "RC564Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private _S:[J

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xc

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    .line 47
    return-void
.end method

.method private bytesToWord([BI)J
    .locals 7
    .parameter "src"
    .parameter "srcOff"

    .prologue
    .line 227
    const-wide/16 v1, 0x0

    .line 229
    .local v1, word:J
    const/4 v0, 0x7

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 230
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 229
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    :cond_0
    return-wide v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 8
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v7, 0x1

    .line 176
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    .line 177
    .local v0, A:J
    add-int/lit8 v5, p2, 0x8

    invoke-direct {p0, p1, v5}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    .line 179
    .local v2, B:J
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 180
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    sub-long v5, v2, v5

    invoke-direct {p0, v5, v6, v0, v1}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v5

    xor-long v2, v5, v0

    .line 181
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v5, v5, v6

    sub-long v5, v0, v5

    invoke-direct {p0, v5, v6, v2, v3}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v5

    xor-long v0, v5, v2

    .line 179
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    sub-long v5, v0, v5

    invoke-direct {p0, v5, v6, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 185
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v5, v5, v7

    sub-long v5, v2, v5

    add-int/lit8 v7, p4, 0x8

    invoke-direct {p0, v5, v6, p3, v7}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 187
    const/16 v5, 0x10

    return v5
.end method

.method private encryptBlock([BI[BI)I
    .locals 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v5

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    add-long v0, v5, v7

    .line 162
    .local v0, A:J
    add-int/lit8 v5, p2, 0x8

    invoke-direct {p0, p1, v5}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v5

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v8, 0x1

    aget-wide v7, v7, v8

    add-long v2, v5, v7

    .line 164
    .local v2, B:J
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    if-gt v4, v5, :cond_0

    .line 165
    xor-long v5, v0, v2

    invoke-direct {p0, v5, v6, v2, v3}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v5

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v8, v4, 0x2

    aget-wide v7, v7, v8

    add-long v0, v5, v7

    .line 166
    xor-long v5, v2, v0

    invoke-direct {p0, v5, v6, v0, v1}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v5

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v7, v7, v8

    add-long v2, v5, v7

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 170
    add-int/lit8 v5, p4, 0x8

    invoke-direct {p0, v2, v3, p3, v5}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 172
    const/16 v5, 0x10

    return v5
.end method

.method private rotateLeft(JJ)J
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v4, 0x3f

    .line 208
    and-long v0, p3, v4

    long-to-int v0, v0

    shl-long v0, p1, v0

    const-wide/16 v2, 0x40

    and-long/2addr v4, p3

    sub-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private rotateRight(JJ)J
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v4, 0x3f

    .line 223
    and-long v0, p3, v4

    long-to-int v0, v0

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    and-long/2addr v4, p3

    sub-long/2addr v2, v4

    long-to-int v2, v2

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private setKey([B)V
    .locals 16
    .parameter "key"

    .prologue
    .line 107
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    new-array v5, v10, [J

    .line 109
    .local v5, L:[J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v10, v0

    if-eq v6, v10, :cond_0

    .line 110
    div-int/lit8 v10, v6, 0x8

    aget-wide v11, v5, v10

    aget-byte v13, p1, v6

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    rem-int/lit8 v15, v6, 0x8

    mul-int/lit8 v15, v15, 0x8

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    aput-wide v11, v5, v10

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v10, v10, 0x2

    new-array v10, v10, [J

    move-object/from16 v0, p0

    iput-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    .line 121
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v11, 0x0

    const-wide v12, -0x481eae9d7512d595L

    aput-wide v12, v10, v11

    .line 122
    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v10, v10

    if-ge v6, v10, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/lit8 v12, v6, -0x1

    aget-wide v11, v11, v12

    const-wide v13, -0x61c8864680b583ebL

    add-long/2addr v11, v13

    aput-wide v11, v10, v6

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    :cond_1
    array-length v10, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v11, v11

    if-le v10, v11, :cond_2

    .line 134
    array-length v10, v5

    mul-int/lit8 v7, v10, 0x3

    .line 139
    .local v7, iter:I
    :goto_2
    const-wide/16 v1, 0x0

    .local v1, A:J
    const-wide/16 v3, 0x0

    .line 140
    .local v3, B:J
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 142
    .local v8, j:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_3
    if-ge v9, v7, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v11, v11, v6

    add-long/2addr v11, v1

    add-long/2addr v11, v3

    const-wide/16 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v1

    .end local v1           #A:J
    aput-wide v1, v10, v6

    .line 144
    .restart local v1       #A:J
    aget-wide v10, v5, v8

    add-long/2addr v10, v1

    add-long/2addr v10, v3

    add-long v12, v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v3

    .end local v3           #B:J
    aput-wide v3, v5, v8

    .line 145
    .restart local v3       #B:J
    add-int/lit8 v10, v6, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v11, v11

    rem-int v6, v10, v11

    .line 146
    add-int/lit8 v10, v8, 0x1

    array-length v11, v5

    rem-int v8, v10, v11

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 136
    .end local v1           #A:J
    .end local v3           #B:J
    .end local v7           #iter:I
    .end local v8           #j:I
    .end local v9           #k:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v10, v10

    mul-int/lit8 v7, v10, 0x3

    .restart local v7       #iter:I
    goto :goto_2

    .line 148
    .restart local v1       #A:J
    .restart local v3       #B:J
    .restart local v8       #j:I
    .restart local v9       #k:I
    :cond_3
    return-void
.end method

.method private wordToBytes(J[BI)V
    .locals 4
    .parameter "word"
    .parameter "dst"
    .parameter "dstOff"

    .prologue
    const/16 v3, 0x8

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 238
    add-int v1, v0, p4

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 239
    ushr-long/2addr p1, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 66
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/RC5Parameters;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC564 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 71
    check-cast v0, Lmyorg/bouncycastle/crypto/params/RC5Parameters;

    .line 73
    .local v0, p:Lmyorg/bouncycastle/crypto/params/RC5Parameters;
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    .line 75
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 77
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->setKey([B)V

    .line 78
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 81
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC564Engine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
