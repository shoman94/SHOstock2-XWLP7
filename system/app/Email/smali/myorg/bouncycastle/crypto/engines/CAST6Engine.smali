.class public final Lmyorg/bouncycastle/crypto/engines/CAST6Engine;
.super Lmyorg/bouncycastle/crypto/engines/CAST5Engine;
.source "CAST6Engine.java"


# instance fields
.field protected _Km:[I

.field protected _Kr:[I

.field protected _Tm:[I

.field protected _Tr:[I

.field private _workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xc0

    const/16 v1, 0x30

    .line 33
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    .line 22
    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    .line 23
    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    .line 28
    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    .line 29
    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected final CAST_Decipher(IIII[I)V
    .locals 5
    .parameter "A"
    .parameter "B"
    .parameter "C"
    .parameter "D"
    .parameter "result"

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 234
    rsub-int/lit8 v2, v0, 0xb

    mul-int/lit8 v1, v2, 0x4

    .line 236
    .local v1, x:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 237
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 238
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 239
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1           #x:I
    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 244
    rsub-int/lit8 v2, v0, 0xb

    mul-int/lit8 v1, v2, 0x4

    .line 246
    .restart local v1       #x:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 247
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 248
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 249
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v1           #x:I
    :cond_1
    const/4 v2, 0x0

    aput p1, p5, v2

    .line 254
    const/4 v2, 0x1

    aput p2, p5, v2

    .line 255
    const/4 v2, 0x2

    aput p3, p5, v2

    .line 256
    const/4 v2, 0x3

    aput p4, p5, v2

    .line 257
    return-void
.end method

.method protected final CAST_Encipher(IIII[I)V
    .locals 5
    .parameter "A"
    .parameter "B"
    .parameter "C"
    .parameter "D"
    .parameter "result"

    .prologue
    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 197
    mul-int/lit8 v1, v0, 0x4

    .line 199
    .local v1, x:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 200
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 201
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 202
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v1           #x:I
    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 207
    mul-int/lit8 v1, v0, 0x4

    .line 209
    .restart local v1       #x:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    .line 210
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    .line 211
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    .line 212
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    .end local v1           #x:I
    :cond_1
    const/4 v2, 0x0

    aput p1, p5, v2

    .line 217
    const/4 v2, 0x1

    aput p2, p5, v2

    .line 218
    const/4 v2, 0x2

    aput p3, p5, v2

    .line 219
    const/4 v2, 0x3

    aput p4, p5, v2

    .line 220
    return-void
.end method

.method protected decryptBlock([BI[BI)I
    .locals 7
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 165
    const/4 v0, 0x4

    new-array v5, v0, [I

    .line 169
    .local v5, result:[I
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    .line 170
    .local v1, A:I
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    .line 171
    .local v2, B:I
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    .line 172
    .local v3, C:I
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    .local v4, D:I
    move-object v0, p0

    .line 174
    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Decipher(IIII[I)V

    .line 177
    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 178
    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x4

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 179
    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x8

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 180
    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0xc

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 182
    const/16 v0, 0x10

    return v0
.end method

.method protected encryptBlock([BI[BI)I
    .locals 7
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 134
    const/4 v0, 0x4

    new-array v5, v0, [I

    .line 139
    .local v5, result:[I
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    .line 140
    .local v1, A:I
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    .line 141
    .local v2, B:I
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    .line 142
    .local v3, C:I
    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    .local v4, D:I
    move-object v0, p0

    .line 144
    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Encipher(IIII[I)V

    .line 147
    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 148
    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x4

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 149
    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x8

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 150
    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0xc

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    .line 152
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "CAST6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected setKey([B)V
    .locals 17
    .parameter "key"

    .prologue
    .line 56
    const v1, 0x5a827999

    .line 57
    .local v1, Cm:I
    const v3, 0x6ed9eba1

    .line 58
    .local v3, Mm:I
    const/16 v2, 0x13

    .line 59
    .local v2, Cr:I
    const/16 v4, 0x11

    .line 65
    .local v4, Mr:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v10, 0x18

    if-ge v5, v10, :cond_1

    .line 66
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    const/16 v10, 0x8

    if-ge v7, v10, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    mul-int/lit8 v11, v5, 0x8

    add-int/2addr v11, v7

    aput v1, v10, v11

    .line 68
    add-int/2addr v1, v3

    .line 70
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    mul-int/lit8 v11, v5, 0x8

    add-int/2addr v11, v7

    aput v2, v10, v11

    .line 71
    add-int v10, v2, v4

    and-int/lit8 v2, v10, 0x1f

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v7           #j:I
    :cond_1
    const/16 v10, 0x40

    new-array v9, v10, [B

    .line 76
    .local v9, tmpKey:[B
    move-object/from16 v0, p1

    array-length v8, v0

    .line 77
    .local v8, length:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    const/4 v5, 0x0

    :goto_2
    const/16 v10, 0x8

    if-ge v5, v10, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v11

    aput v11, v10, v5

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 85
    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/16 v10, 0xc

    if-ge v5, v10, :cond_3

    .line 87
    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v6, v10, 0x8

    .line 88
    .local v6, i2:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x6

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v14, v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v15, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 89
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x5

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 90
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x4

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 91
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x3

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x3

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 92
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x2

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 93
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x5

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 94
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x6

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x6

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 95
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x7

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x7

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x7

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 98
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v6, v10, 0x8

    .line 99
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x6

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v14, v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v15, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 100
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x5

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 101
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x4

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 102
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x3

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x3

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 103
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x2

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 104
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x5

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 105
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x6

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x6

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 106
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x7

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x7

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x7

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    .line 110
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    .line 111
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    .line 112
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    .line 115
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    aput v12, v10, v11

    .line 116
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    aput v12, v10, v11

    .line 117
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    aput v12, v10, v11

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 121
    .end local v6           #i2:I
    :cond_3
    return-void
.end method
