.class public Lcom/sec/android/glview/TwGLNinePatchTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLNinePatchTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLNinePatchTexture"


# instance fields
.field protected GRID_SIZE:I

.field private mDivX:[I

.field private mDivY:[I

.field private mNinePatchHeight:I

.field private mNinePatchWidth:I

.field private mResId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    .line 41
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    .line 42
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    .line 73
    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    .line 41
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    .line 42
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    .line 91
    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    .line 92
    iput p7, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    .line 41
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    .line 42
    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    .line 56
    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 59
    return-void
.end method

.method private processNinePatch([B)Z
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 258
    .local v4, wasSerialized:B
    if-nez v4, :cond_0

    .line 299
    :goto_0
    return v5

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    add-int/lit8 v2, v7, 0x2

    .line 261
    .local v2, nDivXLength:I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    add-int/lit8 v3, v7, 0x2

    .line 263
    .local v3, nDivYLength:I
    new-array v7, v2, [I

    iput-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    .line 264
    new-array v7, v3, [I

    iput-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    .line 267
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 269
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 271
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 272
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 273
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 274
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 279
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aput v5, v7, v5

    .line 280
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_1

    .line 281
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v7, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    :cond_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    aput v9, v7, v8

    .line 285
    iget v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    if-le v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v7, v7, v6

    if-nez v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aput v6, v7, v6

    .line 289
    :cond_2
    iget-object v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aput v5, v7, v5

    .line 290
    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_3

    .line 291
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 293
    :cond_3
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x1

    iget v8, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    aput v8, v5, v7

    .line 295
    iget v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    if-le v5, v10, :cond_4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x2

    aget v5, v5, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    if-ne v5, v7, :cond_4

    .line 296
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    add-int/lit8 v7, v3, -0x2

    iget v8, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    add-int/lit8 v8, v8, -0x1

    aput v8, v5, v7

    :cond_4
    move v5, v6

    .line 299
    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    .line 309
    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    .line 311
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 312
    return-void
.end method

.method protected declared-synchronized initBuffers()V
    .locals 14

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clearBuffers()V

    .line 103
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v12}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 105
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v12, :cond_0

    .line 106
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x6

    new-array v12, v12, [B

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    .line 108
    :cond_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v12, :cond_1

    .line 109
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 111
    :cond_1
    const/4 v2, 0x0

    .line 112
    .local v2, iPos:I
    const/4 v0, 0x0

    .line 114
    .local v0, cPos:I
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-ge v11, v12, :cond_3

    .line 115
    const/4 v10, 0x0

    .local v10, x:I
    move v1, v0

    .end local v0           #cPos:I
    .local v1, cPos:I
    move v3, v2

    .end local v2           #iPos:I
    .local v3, iPos:I
    :goto_1
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-ge v10, v12, :cond_2

    .line 117
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    int-to-byte v4, v12

    .line 118
    .local v4, idx1:B
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v5, v12

    .line 119
    .local v5, idx2:B
    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    int-to-byte v6, v12

    .line 120
    .local v6, idx3:B
    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v7, v12

    .line 122
    .local v7, idx4:B
    int-to-float v12, v10

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v8, v12, v13

    .line 123
    .local v8, u:F
    int-to-float v12, v11

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 125
    .local v9, v:F
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v4, v12, v3

    .line 126
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v5, v12, v2

    .line 127
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v7, v12, v3

    .line 129
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v4, v12, v2

    .line 130
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v7, v12, v3

    .line 131
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v6, v12, v2

    .line 133
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #cPos:I
    .restart local v0       #cPos:I
    aput v8, v12, v1

    .line 134
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #cPos:I
    .restart local v1       #cPos:I
    aput v9, v12, v0

    .line 115
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 114
    .end local v4           #idx1:B
    .end local v5           #idx2:B
    .end local v6           #idx3:B
    .end local v7           #idx4:B
    .end local v8           #u:F
    .end local v9           #v:F
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v0, v1

    .end local v1           #cPos:I
    .restart local v0       #cPos:I
    move v2, v3

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    goto :goto_0

    .line 138
    .end local v10           #x:I
    :cond_3
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v12}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 140
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v12, :cond_4

    .line 141
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x20

    div-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 143
    :cond_4
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v12, :cond_5

    .line 144
    iget v12, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x20

    div-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 146
    :cond_5
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 102
    .end local v0           #cPos:I
    .end local v2           #iPos:I
    .end local v11           #y:I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method protected declared-synchronized initCoordBuffer(IIII)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 215
    monitor-enter p0

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    :try_start_0
    iput v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    .line 216
    int-to-float v4, p2

    int-to-float v5, p4

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, offset:I
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v3, v4, :cond_1

    .line 221
    const/4 v2, 0x0

    .local v2, x:I
    move v1, v0

    .end local v0           #offset:I
    .local v1, offset:I
    :goto_1
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v2, v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v5, v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    mul-float/2addr v5, v6

    aput v5, v4, v1

    .line 223
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    mul-float/2addr v5, v6

    aput v5, v4, v0

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_0

    .line 226
    .end local v2           #x:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    const/4 v0, 0x0

    .line 230
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    if-gt v3, v4, :cond_3

    .line 231
    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    .restart local v2       #x:I
    move v1, v0

    .end local v0           #offset:I
    .restart local v1       #offset:I
    :goto_3
    if-ltz v2, :cond_2

    .line 232
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v5, v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    mul-float/2addr v5, v6

    aput v5, v4, v1

    .line 233
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget-object v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    mul-float/2addr v5, v6

    aput v5, v4, v0

    .line 231
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 230
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_2

    .line 236
    .end local v2           #x:I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 215
    .end local v0           #offset:I
    .end local v3           #y:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected loadNinePatch()V
    .locals 4

    .prologue
    .line 316
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 321
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    .line 322
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    .line 324
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 325
    .local v0, chunkData:[B
    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->processNinePatch([B)Z

    .line 327
    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    if-nez v10, :cond_0

    .line 157
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getLeft()F

    move-result v1

    .line 160
    .local v1, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getTop()F

    move-result v4

    .line 161
    .local v4, top:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v7

    .line 162
    .local v7, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    .line 164
    .local v0, height:F
    const/4 v2, 0x0

    .line 165
    .local v2, offset:I
    const/4 v9, 0x0

    .local v9, y:I
    :goto_0
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_4

    .line 166
    const/4 v8, 0x0

    .local v8, x:I
    move v3, v2

    .end local v2           #offset:I
    .local v3, offset:I
    :goto_1
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->GRID_SIZE:I

    add-int/lit8 v10, v10, 0x1

    if-ge v8, v10, :cond_3

    .line 168
    const/4 v5, 0x0

    .line 169
    .local v5, u:F
    const/4 v6, 0x0

    .line 171
    .local v6, v:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v10

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    .line 172
    packed-switch v8, :pswitch_data_0

    .line 184
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v10

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_2

    .line 185
    packed-switch v9, :pswitch_data_1

    .line 197
    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    add-float v11, v1, v5

    aput v11, v10, v3

    .line 198
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    add-float v11, v4, v6

    aput v11, v10, v2

    .line 199
    iget-object v10, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    const/4 v11, 0x0

    aput v11, v10, v3

    .line 166
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 175
    :pswitch_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v10, v10, v8

    int-to-float v5, v10

    .line 176
    goto :goto_2

    .line 179
    :pswitch_1
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchWidth:I

    iget-object v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivX:[I

    aget v11, v11, v8

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float v5, v7, v10

    goto :goto_2

    .line 188
    :pswitch_2
    iget-object v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v10, v10, v9

    int-to-float v6, v10

    .line 189
    goto :goto_3

    .line 192
    :pswitch_3
    iget v10, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatchHeight:I

    iget-object v11, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mDivY:[I

    aget v11, v11, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float v6, v0, v10

    goto :goto_3

    .line 165
    .end local v5           #u:F
    .end local v6           #v:F
    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v2, v3

    .end local v3           #offset:I
    .restart local v2       #offset:I
    goto :goto_0

    .line 203
    .end local v8           #x:I
    :cond_4
    monitor-exit p0

    return-void

    .line 156
    .end local v0           #height:F
    .end local v1           #left:F
    .end local v2           #offset:I
    .end local v4           #top:F
    .end local v7           #width:F
    .end local v9           #y:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
