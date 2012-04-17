.class public Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGuideLineView.java"


# static fields
.field private static final GUIDELINE_WIDTH:I = 0x2

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLGuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mSideMenu_Width:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IIIZ)V
    .locals 9
    .parameter "activityContext"
    .parameter "parent_width"
    .parameter "parent_height"
    .parameter "sidemenu_width"
    .parameter "bwide"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/16 v8, 0xff

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 48
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    .line 49
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 50
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    .line 52
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 53
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 55
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 56
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 64
    invoke-virtual {p0, p5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setWideResolution(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public handleGuidelineSettingsChanged(I)V
    .locals 1
    .parameter "guideLine"

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWideResolution(Z)V
    .locals 9
    .parameter "bwide"

    .prologue
    const/4 v8, 0x0

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, origin_x:I
    const/4 v3, 0x0

    .line 74
    .local v3, width:I
    const/4 v0, 0x0

    .line 75
    .local v0, guideline_x:I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    .line 77
    .local v1, guideline_y:I
    if-eqz p1, :cond_4

    .line 79
    const/4 v2, 0x0

    .line 80
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 81
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    .line 91
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    add-int v5, v2, v0

    int-to-float v5, v5

    add-int v6, v2, v0

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 97
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    int-to-float v6, v1

    add-int v7, v2, v3

    int-to-float v7, v7

    int-to-float v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_3

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    add-int v7, v2, v3

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 103
    :cond_3
    return-void

    .line 85
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    .line 86
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x2

    .line 87
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x3

    goto :goto_0
.end method
