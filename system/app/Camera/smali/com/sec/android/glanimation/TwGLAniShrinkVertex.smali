.class public Lcom/sec/android/glanimation/TwGLAniShrinkVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShrinkVertex.java"


# static fields
.field private static final PREVIEW_HEIGHT:F = 480.0f

.field private static final PREVIEW_WIDTH:F = 640.0f

.field public static final RESOLUTION_POS_CAMCORDER_LEFT:I = 0x5

.field public static final RESOLUTION_POS_CAMCORDER_WIDE:I = 0x2

.field public static final RESOLUTION_POS_CENTER_FULL:I = 0x3

.field public static final RESOLUTION_POS_CENTER_MINI:I = 0x4

.field public static final RESOLUTION_POS_NONE:I = -0x1

.field public static final RESOLUTION_POS_WIDE_FULL:I = 0x1

.field private static final SHRINK_RATIO:F = 0.88f

.field private static final SHRINK_RATIO_WIDE:F = 0.92f


# instance fields
.field protected final BOTTOM_OFFSET:F

.field protected final BOTTOM_OFFSET_CAMCORDER_MINI:F

.field protected final BOTTOM_OFFSET_CAMCORDER_WIDE:F

.field protected final DISP_OVER_CNT:F

.field protected final DISP_OVER_RATIO:F

.field protected final INCR_CNT:F

.field protected final RIGHT_OFFSET:F

.field protected final RIGHT_OFFSET_WIDE:F

.field private mMiniOffsetHeight:F

.field private mMiniOffsetWidth:F

.field mNotiThumbnail:Z

.field private mResolutionType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 6
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resolutionID"

    .prologue
    .line 64
    const/high16 v0, 0x4420

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    const/high16 v4, 0x4420

    :goto_0
    const/high16 v0, 0x43f0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    const/high16 v5, 0x43f0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 39
    const v0, 0x3e051eb8

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->INCR_CNT:F

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_CNT:F

    .line 41
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_RATIO:F

    .line 43
    const/high16 v0, -0x3e90

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET:F

    .line 44
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_WIDE:F

    .line 45
    const/high16 v0, -0x3ea0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_MINI:F

    .line 47
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    .line 48
    const/high16 v0, -0x3d6c

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET_WIDE:F

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    .line 66
    invoke-direct {p0, p6}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getResolutionType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    .line 68
    const/high16 v0, 0x4420

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 69
    const/high16 v0, 0x4420

    sub-float/2addr v0, p4

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    .line 71
    :cond_0
    const/high16 v0, 0x43f0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_1

    .line 72
    const/high16 v0, 0x43f0

    sub-float/2addr v0, p5

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    .line 74
    :cond_1
    return-void

    :cond_2
    move v4, p4

    .line 64
    goto :goto_0

    :cond_3
    move v5, p5

    goto :goto_1
.end method

.method private getResolutionType(I)I
    .locals 1
    .parameter "resid"

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 216
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 189
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 196
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 203
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 206
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getDrawRatio()F
    .locals 4

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4140

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 160
    const/high16 v0, -0x4080

    .line 178
    :goto_0
    return v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x4119c28f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 164
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3ee8f5c2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 166
    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    if-nez v0, :cond_1

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    .line 178
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    goto :goto_0

    .line 174
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3e051eb8

    const v2, 0x412a6666

    iget v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_1
.end method

.method protected setCustomAnimation(F)V
    .locals 17
    .parameter "ratio"

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v2

    .line 79
    .local v2, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v3

    .line 80
    .local v3, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getRight()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v6, v14, v15

    .line 81
    .local v6, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getBottom()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 83
    .local v1, height:F
    const/4 v4, 0x0

    .line 84
    .local v4, vPos:I
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v10, v14, :cond_2

    .line 85
    int-to-float v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v12, v14, v1

    .line 86
    .local v12, yStep:F
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v7, v14, :cond_1

    .line 88
    const/4 v8, 0x0

    .line 89
    .local v8, xPos:F
    const/4 v11, 0x0

    .line 90
    .local v11, yPos:F
    const/4 v13, 0x0

    .line 92
    .local v13, zPos:F
    int-to-float v14, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v9, v14, v6

    .line 94
    .local v9, xStep:F
    const v14, 0x3f7ae148

    cmpl-float v14, p1, v14

    if-lez v14, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_0

    .line 105
    :pswitch_0
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 108
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_1

    .line 116
    :pswitch_1
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3e90

    add-float v11, v14, v15

    .line 146
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #vPos:I
    .local v5, vPos:I
    invoke-virtual {v14, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v5, 0x1

    .end local v5           #vPos:I
    .restart local v4       #vPos:I
    invoke-virtual {v14, v5, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #vPos:I
    .restart local v5       #vPos:I
    invoke-virtual {v14, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 86
    add-int/lit8 v7, v7, 0x1

    move v4, v5

    .end local v5           #vPos:I
    .restart local v4       #vPos:I
    goto :goto_1

    .line 99
    :pswitch_2
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6b851f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3d6c

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x435c

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 100
    goto :goto_2

    .line 102
    :pswitch_3
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 103
    goto :goto_2

    .line 110
    :pswitch_4
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x4080

    add-float v11, v14, v15

    .line 111
    goto :goto_3

    .line 113
    :pswitch_5
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3ea0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    move/from16 v16, v0

    add-float v15, v15, v16

    add-float v11, v14, v15

    .line 114
    goto/16 :goto_3

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_2

    .line 130
    :pswitch_6
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 133
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_3

    .line 141
    :pswitch_7
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3e90

    mul-float v15, v15, p1

    add-float v11, v14, v15

    goto/16 :goto_3

    .line 124
    :pswitch_8
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6b851f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3d6c

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 125
    goto :goto_4

    .line 127
    :pswitch_9
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 128
    goto :goto_4

    .line 135
    :pswitch_a
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x4080

    mul-float v15, v15, p1

    add-float v11, v14, v15

    .line 136
    goto/16 :goto_3

    .line 138
    :pswitch_b
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    const v16, 0x3f6147ae

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, -0x3ea0

    mul-float v15, v15, p1

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    add-float v11, v14, v15

    .line 139
    goto/16 :goto_3

    .line 84
    .end local v8           #xPos:F
    .end local v9           #xStep:F
    .end local v11           #yPos:F
    .end local v13           #zPos:F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 153
    .end local v7           #x:I
    .end local v12           #yStep:F
    :cond_2
    return-void

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 121
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 133
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
