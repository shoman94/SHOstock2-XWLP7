.class public Lcom/sec/android/app/camera/CamcorderIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

.field private mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

.field private mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

.field private mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

.field public mLastOrientation:I

.field private mLock:Landroid/view/View;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 235
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 236
    iput v7, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    .line 237
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 238
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 239
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 240
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderIndicators;->setTouchHandled(Z)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderIndicators;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderIndicators;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderIndicators;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CamcorderIndicators;->rotateButton(IILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorResolution;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLock:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderIndicators;->setOrientationListener()V

    .line 63
    return-void
.end method

.method private rotateButton(IILandroid/view/View;Z)V
    .locals 7
    .parameter "orientation"
    .parameter "lastOrientation"
    .parameter "view"
    .parameter "setAnimationDuration"

    .prologue
    const/16 v5, 0x10e

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 243
    if-ne p1, p2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 245
    :cond_0
    if-nez p1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    if-ne v0, v5, :cond_3

    .line 246
    const/16 p1, 0x168

    .line 251
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 252
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 253
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 254
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 260
    if-eqz p4, :cond_2

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 247
    :cond_3
    if-ne p1, v5, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    if-nez v0, :cond_1

    .line 248
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    goto/16 :goto_1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 318
    move v0, p1

    .line 319
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 324
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 325
    const/4 v1, 0x0

    .line 335
    .local v1, retVal:I
    :goto_0
    return v1

    .line 326
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 327
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 328
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 329
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 330
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 331
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 333
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/sec/android/app/camera/CamcorderIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators$1;-><init>(Lcom/sec/android/app/camera/CamcorderIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 315
    return-void
.end method


# virtual methods
.method protected ChangeOutdoorVisibility(I)V
    .locals 4
    .parameter "modeid"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->clearAnimation()V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->rotateButton(IILandroid/view/View;Z)V

    .line 209
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setOutdoorVisibility(I)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .locals 5
    .parameter "modeid"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->clearAnimation()V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 142
    .local v0, cameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 145
    .end local v0           #cameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->rotateButton(IILandroid/view/View;Z)V

    .line 146
    return-void

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 132
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 135
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 138
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .locals 4
    .parameter "modeid"

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->clearAnimation()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->rotateButton(IILandroid/view/View;Z)V

    .line 193
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ChangeWhiteBalance(I)V
    .locals 4
    .parameter "modeid"

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->clearAnimation()V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->rotateButton(IILandroid/view/View;Z)V

    .line 171
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->clear()V

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->clear()V

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->clear()V

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->clear()V

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mLock:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 83
    return-void
.end method

.method public initIndicators()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 88
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeResolution(I)V

    .line 89
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeWhiteBalance(I)V

    .line 91
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeTimer(I)V

    .line 92
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeOutdoorVisibility(I)V

    .line 93
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 97
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 100
    sparse-switch p1, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeResolution(I)V

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeWhiteBalance(I)V

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeTimer(I)V

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeOutdoorVisibility(I)V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x6a -> :sswitch_2
        0x6b -> :sswitch_1
        0x79 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 222
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
