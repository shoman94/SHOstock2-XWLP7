.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewShutter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewShutter"


# instance fields
.field private mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

.field private mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

.field private mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

.field private mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

.field private mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

.field private mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

.field private mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLandroid/graphics/Bitmap;Z)V
    .locals 18
    .parameter "activityContext"
    .parameter "previewLeft"
    .parameter "previewTop"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "data"
    .parameter "bCamera"

    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 60
    const-string v1, "TwGLPostViewShutter"

    const-string v2, "TwGLPostViewShutter() - constructor - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 63
    .local v17, width:F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    int-to-float v15, v1

    .line 65
    .local v15, height:F
    const/4 v7, 0x0

    .line 67
    .local v7, resolutionID:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v16, 0x1

    .line 69
    .local v16, portrait:Z
    :goto_0
    new-instance v1, Lcom/sec/android/glview/TwGLAniBitmapTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLAniBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    .end local v7           #resolutionID:I
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    .line 71
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_2

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    .line 74
    .restart local v7       #resolutionID:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniBitmapTexture;->setFlip(Z)V

    .line 85
    :cond_0
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_3

    .line 86
    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201b3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniResourceTexture;->setAlpha(F)V

    .line 88
    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201b4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniResourceTexture;->setAlpha(F)V

    .line 98
    :goto_2
    new-instance v1, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->setPicureMode(Z)V

    .line 102
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 103
    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a0

    sub-float v10, p2, v1

    const/high16 v11, -0x3f60

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    const/high16 v2, 0x40a0

    add-float v12, v1, v2

    const/high16 v1, 0x4120

    add-float v13, v15, v1

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    add-float v10, p2, v1

    const/high16 v11, -0x3f60

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    const/high16 v2, 0x40a0

    add-float v12, v1, v2

    const/high16 v1, 0x4120

    add-float v13, v15, v1

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    :goto_3
    new-instance v8, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    move/from16 v12, v17

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLFillRectangle;->setAlpha(F)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    const-string v1, "TwGLPostViewShutter"

    const-string v2, "TwGLPostViewShutter() - constructor - end!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 67
    .end local v16           #portrait:Z
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 78
    .end local v7           #resolutionID:I
    .restart local v16       #portrait:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    .line 80
    .restart local v7       #resolutionID:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v1

    if-nez v1, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniBitmapTexture;->setFlip(Z)V

    goto/16 :goto_1

    .line 92
    :cond_3
    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201b5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniResourceTexture;->setAlpha(F)V

    .line 94
    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201b2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniResourceTexture;->setAlpha(F)V

    goto/16 :goto_2

    .line 108
    :cond_4
    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a0

    sub-float v10, p2, v1

    const/high16 v11, -0x3f60

    const/high16 v1, 0x4120

    add-float v12, p4, v1

    const/high16 v1, 0x4000

    div-float v1, v15, v1

    const/high16 v2, 0x40a0

    add-float v13, v1, v2

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a0

    sub-float v10, p2, v1

    const/high16 v1, 0x4000

    div-float v11, v15, v1

    const/high16 v1, 0x4120

    add-float v12, p4, v1

    const/high16 v1, 0x4000

    div-float v1, v15, v1

    const/high16 v2, 0x40a0

    add-float v13, v1, v2

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->playAnimation(I)V

    return-void
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 5
    .parameter "step"

    .prologue
    .line 125
    const-string v1, "TwGLPostViewShutter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimationStep("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->stopAniCustomAnimation()V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->stopAniCustomAnimation()V

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->stopAniCustomAnimation()V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;->startAniCustomAnimation()V

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->startAniCustomAnimation()V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual {v1}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->startAniCustomAnimation()V

    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 187
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 188
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 190
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLFillRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLFillRectangle;->startAnimation()V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
