.class public Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLUserProfileButton.java"


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDim:Z

.field protected mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mDimId:I

.field protected mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mHighlightId:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mLock:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mNormalId:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mPressedId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    .line 114
    if-eqz p6, :cond_0

    .line 115
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 117
    :cond_0
    if-eqz p7, :cond_1

    .line 118
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 119
    :cond_1
    if-eqz p8, :cond_2

    .line 120
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 123
    :cond_2
    if-eqz p9, :cond_3

    .line 124
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 125
    :cond_3
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 126
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 129
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 132
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    .line 134
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_7

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 137
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_8

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_9

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 143
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_a

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 145
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_b

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 147
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_c

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 149
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_d

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    .line 154
    :cond_d
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalId:I

    .line 155
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedId:I

    .line 156
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimId:I

    .line 157
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlightId:I

    .line 158
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 266
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 270
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 274
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 278
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 282
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 284
    :cond_4
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mImageData:[B

    .line 285
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 286
    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "gl"

    .prologue
    .line 317
    const/4 v0, 0x1

    .line 318
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    const/4 v0, 0x0

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    const/4 v0, 0x0

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    const/4 v0, 0x0

    .line 339
    :cond_4
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 506
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 508
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_1

    .line 509
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 510
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 512
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 513
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_3

    .line 517
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 518
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 520
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 521
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 524
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    .line 525
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 526
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 528
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 529
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 532
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v1

    .line 536
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 537
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    .line 541
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setSize(FF)V

    .line 542
    return-void
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    return v0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 363
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 366
    :cond_3
    return-void

    .line 349
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 354
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onLayoutUpdate()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->onLayoutUpdate()V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdate()V

    .line 388
    :cond_4
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 309
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->reset()V

    .line 600
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    if-nez v2, :cond_1

    .line 396
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    if-eqz v2, :cond_2

    .line 399
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    .line 400
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 402
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 403
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 406
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 407
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressed:Z

    goto :goto_0

    .line 410
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setButtonResources(IIII)V
    .locals 9
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightId"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    .line 422
    if-eqz p1, :cond_0

    .line 423
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 424
    :cond_0
    if-eqz p2, :cond_1

    .line 425
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 426
    :cond_1
    if-eqz p3, :cond_2

    .line 427
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 428
    :cond_2
    if-eqz p4, :cond_3

    .line 429
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_6

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 449
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_a

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_8

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 452
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    .line 460
    :cond_9
    :goto_0
    return-void

    .line 455
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 457
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_9

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3
    .parameter "dim"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3e4ccccd

    .line 235
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    .line 236
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDim:Z

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowHighlight:Z

    .line 229
    return-void
.end method

.method public setLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mLock:Z

    .line 253
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 574
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 581
    :cond_0
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 470
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 471
    :cond_0
    const/4 v2, 0x0

    .line 496
    :goto_0
    return v2

    .line 474
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    .line 475
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    .line 478
    .local v1, buttonImageWidth:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v0

    .line 480
    .local v0, buttonImageHeight:F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_3

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 488
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 490
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_5

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 496
    .end local v0           #buttonImageHeight:F
    .end local v1           #buttonImageWidth:F
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 546
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 547
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    .line 548
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 550
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 553
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mNormalBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mPressedBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetLayout()V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mDimBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mHighlight:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 570
    :cond_5
    return-void
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    .line 186
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    .line 173
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 211
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 199
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->mShowText:Z

    .line 220
    return-void
.end method
