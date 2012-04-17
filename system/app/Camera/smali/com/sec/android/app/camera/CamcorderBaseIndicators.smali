.class public Lcom/sec/android/app/camera/CamcorderBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TRANSLATE:I = 0x50


# instance fields
.field private final MAX_RECORDING_TIME:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

.field private mIndicatorGroup:Landroid/widget/RelativeLayout;

.field private mIndicatorRemainTime:Landroid/widget/TextView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field public mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRemainTime:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    .line 70
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 48
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->SECONDS_IN_AN_HOUR:I

    .line 49
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->SECONDS_IN_A_DAY:I

    .line 50
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->MAX_RECORDING_TIME:I

    .line 58
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mContext:Landroid/content/Context;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setCaptureEnabled(Z)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setTouchHandled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderBaseIndicators;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderBaseIndicators;IILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->rotateButton(IILandroid/view/View;Z)V

    return-void
.end method

.method private hmsConvert(I)V
    .locals 9
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    .line 170
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 171
    const p1, 0x1517f

    .line 174
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 175
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 176
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 179
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 198
    return-void

    .line 182
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 194
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setOrientationListener()V

    .line 124
    return-void
.end method

.method private rotateButton(IILandroid/view/View;Z)V
    .locals 9
    .parameter "orientation"
    .parameter "lastOrientation"
    .parameter "view"
    .parameter "translate"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v8, -0x3d60

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 314
    if-ne p1, p2, :cond_0

    .line 366
    :goto_0
    return-void

    .line 316
    :cond_0
    if-nez p1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 317
    const/16 p1, 0x168

    .line 322
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 323
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 324
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 325
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 327
    if-eqz p4, :cond_2

    .line 328
    sparse-switch p1, :sswitch_data_0

    .line 346
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 349
    if-eqz p4, :cond_3

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 354
    if-eqz p4, :cond_4

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 360
    if-eqz p4, :cond_5

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 318
    :cond_6
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    if-nez v0, :cond_1

    .line 319
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    goto/16 :goto_1

    .line 330
    :sswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a0

    invoke-direct {v0, v7, v8, v7, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 333
    :sswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a0

    invoke-direct {v0, v7, v1, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 336
    :sswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 340
    :sswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
        0x168 -> :sswitch_3
    .end sparse-switch
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 400
    move v0, p1

    .line 401
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 404
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 406
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 407
    const/4 v1, 0x0

    .line 417
    .local v1, retVal:I
    :goto_0
    return v1

    .line 408
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 409
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 410
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 411
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 412
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 413
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 415
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CamcorderBaseIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 397
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->clear()V

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 96
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 100
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 102
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 103
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    return v0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRemainTime:I

    return v0
.end method

.method public getTouchRectHeight()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v0

    return v0
.end method

.method public getTouchRectWidth()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v0

    return v0
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 265
    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 128
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 156
    sparse-switch p1, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 158
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 161
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 143
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->rotateButton(IILandroid/view/View;Z)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->updateStorageIndicator()V

    .line 137
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->reset()V

    .line 287
    return-void
.end method

.method public resumeOrientationListener()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 149
    :cond_0
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 214
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 5
    .parameter "level"

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0xe

    const/4 v0, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 217
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    .line 218
    if-gt p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 237
    return-void

    .line 221
    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 224
    :cond_1
    if-le p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 227
    :cond_2
    if-le p1, v4, :cond_3

    const/16 v0, 0x27

    if-gt p1, v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_3
    const/16 v0, 0x27

    if-le p1, v0, :cond_4

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_4
    const/16 v0, 0x3b

    if-le p1, v0, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    .line 261
    return-void
.end method

.method public setRemainTime(I)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 201
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRemainTime:I

    .line 202
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->hmsConvert(I)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setTouchFocusRectCenter(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 272
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v2, rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v0, v3, -0x40

    .line 276
    .local v0, newLeft:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v3

    sub-int v3, p2, v3

    add-int/lit8 v1, v3, -0x40

    .line 278
    .local v1, newTop:I
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 279
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 281
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    sub-int v4, p3, v0

    sub-int v5, p4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setPhysicalRectSize(II)V

    .line 283
    return-void
.end method

.method public shrinkTouchFocusRect()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->shrinkRect()V

    .line 291
    return-void
.end method

.method public updateGuidelines()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 153
    return-void
.end method

.method public updateStorageIndicator()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 245
    return-void
.end method
