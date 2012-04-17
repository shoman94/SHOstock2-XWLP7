.class public Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLFocusButton.java"


# static fields
.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2

.field private static final INCR_VAL:I = 0xaa

.field public static final MODE_FAIL:I = 0xd

.field public static final MODE_FOCUS:I = 0xb

.field public static final MODE_NOTREADY:I = 0xa

.field public static final MODE_READY:I = 0xc

.field protected static final TAG:Ljava/lang/String; = "TwGLFocusButton"


# instance fields
.field aniLeftBottomGrow:Landroid/view/animation/Animation;

.field aniLeftBottomShrink:Landroid/view/animation/Animation;

.field aniLeftTopGrow:Landroid/view/animation/Animation;

.field aniLeftTopShrink:Landroid/view/animation/Animation;

.field aniRightBottomGrow:Landroid/view/animation/Animation;

.field aniRightBottomShrink:Landroid/view/animation/Animation;

.field aniRightTopGrow:Landroid/view/animation/Animation;

.field aniRightTopShrink:Landroid/view/animation/Animation;

.field private mFocus:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocusRectSizeX:I

.field private mFocusRectSizeY:I

.field private mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

.field private mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

.field private mInitPosX:I

.field private mInitPosY:I

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I

.field private mShrinkOffsetX:I

.field private mShrinkOffsetY:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 10
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/high16 v2, 0x432a

    const/high16 v9, 0x41a8

    const/high16 v8, -0x3e58

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1, v6, v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 87
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0201bc

    invoke-direct {v0, p1, v6, v6, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0201be

    invoke-direct {v0, p1, v6, v6, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0201bb

    invoke-direct {v0, p1, v6, v6, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 96
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020020

    invoke-direct {v0, p1, v6, v6, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    .line 97
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020021

    invoke-direct {v0, p1, v2, v6, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    .line 98
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020022

    invoke-direct {v0, p1, v6, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020023

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xaa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xaa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    .line 103
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    .line 104
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    .line 106
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    int-to-float v5, v1

    move-object v1, p1

    move v2, v6

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 142
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 148
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mShrinkOffsetY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 154
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v9, v6, v9, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 160
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v8, v6, v9, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 166
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v9, v6, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 172
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v8, v6, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    float-to-int v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 179
    float-to-int v0, p3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 181
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 182
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 184
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translate(FF)V

    .line 185
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
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
    .line 295
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getXDelta()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getYDelta()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onFocus(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x6

    .line 189
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 190
    .local v0, moveX:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 192
    .local v1, moveY:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 193
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 194
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 196
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translateAbsolute(FF)V

    .line 199
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    if-eq v2, v4, :cond_2

    .line 201
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 214
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 217
    :cond_2
    return-void
.end method

.method public resetPosIndicator()V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 223
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 224
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 226
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->translate(FF)V

    .line 228
    return-void
.end method

.method public setFocusIndicator(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 239
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 248
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_NotReady:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ready:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Fail:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 256
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shrinkRect()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightTopShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniLeftBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRightBottomShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_LeftBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_RightBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 276
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 278
    return-void
.end method
