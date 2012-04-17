.class public Lmyorg/bouncycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;
.source "RC6Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private _S:[I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    .line 43
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 4
    .parameter "src"
    .parameter "srcOff"

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, word:I
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 297
    shl-int/lit8 v2, v1, 0x8

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 296
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 300
    :cond_0
    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 10
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 213
    .local v0, A:I
    add-int/lit8 v8, p2, 0x4

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 214
    .local v1, B:I
    add-int/lit8 v8, p2, 0x8

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 215
    .local v2, C:I
    add-int/lit8 v8, p2, 0xc

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 218
    .local v3, D:I
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2b

    aget v8, v8, v9

    sub-int/2addr v2, v8

    .line 219
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2a

    aget v8, v8, v9

    sub-int/2addr v0, v8

    .line 222
    const/16 v4, 0x14

    .local v4, i:I
    :goto_0
    const/4 v8, 0x1

    if-lt v4, v8, :cond_0

    .line 223
    const/4 v5, 0x0

    .local v5, t:I
    const/4 v7, 0x0

    .line 225
    .local v7, u:I
    move v6, v3

    .line 226
    .local v6, temp:I
    move v3, v2

    .line 227
    move v2, v1

    .line 228
    move v1, v0

    .line 229
    move v0, v6

    .line 231
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v5, v1, v8

    .line 232
    const/4 v8, 0x5

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    .line 234
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v7, v3, v8

    .line 235
    const/4 v8, 0x5

    invoke-direct {p0, v7, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    .line 237
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v2, v8

    .line 238
    invoke-direct {p0, v2, v5}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v2

    .line 239
    xor-int/2addr v2, v7

    .line 241
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    sub-int/2addr v0, v8

    .line 242
    invoke-direct {p0, v0, v7}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v0

    .line 243
    xor-int/2addr v0, v5

    .line 222
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 247
    .end local v5           #t:I
    .end local v6           #temp:I
    .end local v7           #u:I
    :cond_0
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v3, v8

    .line 248
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v1, v8

    .line 250
    invoke-direct {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 251
    add-int/lit8 v8, p4, 0x4

    invoke-direct {p0, v1, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 252
    add-int/lit8 v8, p4, 0x8

    invoke-direct {p0, v2, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 253
    add-int/lit8 v8, p4, 0xc

    invoke-direct {p0, v3, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 255
    const/16 v8, 0x10

    return v8
.end method

.method private encryptBlock([BI[BI)I
    .locals 11
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v10, 0x5

    .line 164
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 165
    .local v0, A:I
    add-int/lit8 v8, p2, 0x4

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 166
    .local v1, B:I
    add-int/lit8 v8, p2, 0x8

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 167
    .local v2, C:I
    add-int/lit8 v8, p2, 0xc

    invoke-direct {p0, p1, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 170
    .local v3, D:I
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v1, v8

    .line 171
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v3, v8

    .line 174
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    const/16 v8, 0x14

    if-gt v4, v8, :cond_0

    .line 175
    const/4 v5, 0x0

    .local v5, t:I
    const/4 v7, 0x0

    .line 177
    .local v7, u:I
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v5, v1, v8

    .line 178
    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    .line 180
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v7, v3, v8

    .line 181
    invoke-direct {p0, v7, v10}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    .line 183
    xor-int/2addr v0, v5

    .line 184
    invoke-direct {p0, v0, v7}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    .line 185
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    add-int/2addr v0, v8

    .line 187
    xor-int/2addr v2, v7

    .line 188
    invoke-direct {p0, v2, v5}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v2

    .line 189
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    add-int/2addr v2, v8

    .line 191
    move v6, v0

    .line 192
    .local v6, temp:I
    move v0, v1

    .line 193
    move v1, v2

    .line 194
    move v2, v3

    .line 195
    move v3, v6

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .end local v5           #t:I
    .end local v6           #temp:I
    .end local v7           #u:I
    :cond_0
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2a

    aget v8, v8, v9

    add-int/2addr v0, v8

    .line 199
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2b

    aget v8, v8, v9

    add-int/2addr v2, v8

    .line 202
    invoke-direct {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 203
    add-int/lit8 v8, p4, 0x4

    invoke-direct {p0, v1, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 204
    add-int/lit8 v8, p4, 0x8

    invoke-direct {p0, v2, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 205
    add-int/lit8 v8, p4, 0xc

    invoke-direct {p0, v3, p3, v8}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 207
    const/16 v8, 0x10

    return v8
.end method

.method private rotateLeft(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 275
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 11
    .parameter "key"

    .prologue
    .line 112
    array-length v8, p1

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v3, v8, 0x4

    .line 113
    .local v3, c:I
    if-nez v3, :cond_0

    .line 114
    const/4 v3, 0x1

    .line 116
    :cond_0
    array-length v8, p1

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x4

    new-array v2, v8, [I

    .line 119
    .local v2, L:[I
    array-length v8, p1

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 120
    div-int/lit8 v8, v4, 0x4

    div-int/lit8 v9, v4, 0x4

    aget v9, v2, v9

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, p1, v4

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    aput v9, v2, v8

    .line 119
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 130
    :cond_1
    const/16 v8, 0x2c

    new-array v8, v8, [I

    iput-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    .line 132
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    const v10, -0x481eae9d

    aput v10, v8, v9

    .line 133
    const/4 v4, 0x1

    :goto_1
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 134
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    const v10, -0x61c88647

    add-int/2addr v9, v10

    aput v9, v8, v4

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    :cond_2
    array-length v8, v2

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v9, v9

    if-le v8, v9, :cond_3

    .line 145
    array-length v8, v2

    mul-int/lit8 v5, v8, 0x3

    .line 150
    .local v5, iter:I
    :goto_2
    const/4 v0, 0x0

    .line 151
    .local v0, A:I
    const/4 v1, 0x0

    .line 152
    .local v1, B:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 154
    .local v6, j:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_3
    if-ge v7, v5, :cond_4

    .line 155
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    add-int/2addr v9, v1

    const/4 v10, 0x3

    invoke-direct {p0, v9, v10}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    .end local v0           #A:I
    aput v0, v8, v4

    .line 156
    .restart local v0       #A:I
    aget v8, v2, v6

    add-int/2addr v8, v0

    add-int/2addr v8, v1

    add-int v9, v0, v1

    invoke-direct {p0, v8, v9}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v1

    .end local v1           #B:I
    aput v1, v2, v6

    .line 157
    .restart local v1       #B:I
    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v9, v9

    rem-int v4, v8, v9

    .line 158
    add-int/lit8 v8, v6, 0x1

    array-length v9, v2

    rem-int v6, v8, v9

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 147
    .end local v0           #A:I
    .end local v1           #B:I
    .end local v5           #iter:I
    .end local v6           #j:I
    .end local v7           #k:I
    :cond_3
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v8, v8

    mul-int/lit8 v5, v8, 0x3

    .restart local v5       #iter:I
    goto :goto_2

    .line 160
    .restart local v0       #A:I
    .restart local v1       #B:I
    .restart local v6       #j:I
    .restart local v7       #k:I
    :cond_4
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 3
    .parameter "word"
    .parameter "dst"
    .parameter "dstOff"

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 305
    add-int v1, v0, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 306
    ushr-int/lit8 p1, p1, 0x8

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "RC6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 62
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC6 init - "

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

    .line 67
    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 68
    .local v0, p:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    .line 69
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->setKey([B)V

    .line 70
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 73
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v0

    .line 74
    .local v0, blockSize:I
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RC6 engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    add-int v1, p2, v0

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 78
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    add-int v1, p4, v0

    array-length v2, p3

    if-le v1, v2, :cond_2

    .line 81
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->encryptBlock([BI[BI)I

    move-result v1

    :goto_0
    return v1

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/RC6Engine;->decryptBlock([BI[BI)I

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
