.class public Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_TRANSLATE_X:I = 0x78

.field private static final INDICATOR_TRANSLATE_Y:I = 0x78

.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final MMS_LAYOUT_TRANSLATE_X:I = -0x50

.field private static final MMS_LAYOUT_TRANSLATE_Y:I = 0x0

.field private static final PROGRESSBAR_MAX:I = 0x64

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final RECSIZE_TRANSLATE_X:I = -0x78

.field private static final RECSIZE_TRANSLATE_Y:I = 0x78

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c


# instance fields
.field private final MAX_MMS_SIZE:J

.field private final MAX_MMS_SIZE_KOR:J

.field private isMMSMode:Z

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorGroup:Landroid/widget/RelativeLayout;

.field public mLastOrientation:I

.field private mMMSLayout:Landroid/widget/RelativeLayout;

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecCurSizeLayout:Landroid/widget/RelativeLayout;

.field private mRecIcon:Landroid/widget/ImageView;

.field private final mRecImageId:I

.field private mRecMMSSizeText:Landroid/widget/TextView;

.field private mRecMaxSize:Landroid/widget/TextView;

.field private mRecSizeText:Landroid/widget/TextView;

.field private mRecTimeText:Landroid/widget/TextView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopping:Z

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;


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

    .line 110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 71
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE:J

    .line 72
    const-wide/32 v0, 0xed800

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE_KOR:J

    .line 85
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 86
    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 88
    const v0, 0x7f020186

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecImageId:I

    .line 89
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 90
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationEnabled:Z

    .line 100
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 500
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 501
    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    .line 502
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 503
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 504
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 505
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 506
    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->init()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderRecordingMenu;IILandroid/view/View;ZZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->rotateButton(IILandroid/view/View;ZZII)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    .line 442
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 443
    return-void
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 216
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hideIndicatorGroup()V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 226
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    .line 451
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 452
    return-void
.end method

.method private hmsConvert(I)V
    .locals 9
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    .line 396
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 397
    const p1, 0x1517f

    .line 400
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 401
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 402
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 405
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
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

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 424
    return-void

    .line 408
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 414
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 420
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    .line 123
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSoundEffectsEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSoundEffectsEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->setOrientationListener()V

    .line 163
    return-void
.end method

.method private rotateButton(IILandroid/view/View;ZZII)V
    .locals 8
    .parameter "orientation"
    .parameter "lastOrientation"
    .parameter "view"
    .parameter "translate"
    .parameter "setAnimationDuration"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v2, 0x10e

    const/high16 v1, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 509
    if-ne p1, p2, :cond_0

    .line 563
    :goto_0
    return-void

    .line 511
    :cond_0
    if-nez p1, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    if-ne v0, v2, :cond_8

    .line 512
    const/16 p1, 0x168

    .line 517
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 518
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 519
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 520
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 522
    if-eqz p4, :cond_2

    .line 523
    sparse-switch p1, :sswitch_data_0

    .line 541
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 544
    if-eqz p4, :cond_3

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 546
    :cond_3
    if-eqz p5, :cond_4

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 550
    :cond_4
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 552
    :cond_5
    if-eqz p5, :cond_6

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 555
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 557
    if-eqz p4, :cond_7

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 559
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 513
    :cond_8
    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    if-nez v0, :cond_1

    .line 514
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    goto/16 :goto_1

    .line 525
    :sswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p6

    int-to-float v1, v1

    int-to-float v2, p7

    invoke-direct {v0, v7, v1, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 528
    :sswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p6

    neg-int v2, p7

    int-to-float v2, v2

    invoke-direct {v0, v7, v1, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 531
    :sswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 535
    :sswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 523
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
    .line 601
    move v0, p1

    .line 602
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 605
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 607
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 608
    const/4 v1, 0x0

    .line 618
    .local v1, retVal:I
    :goto_0
    return v1

    .line 609
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 610
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 611
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 612
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 613
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 614
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 616
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 598
    return-void
.end method

.method private unlockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 460
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->clear()V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 184
    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    .line 185
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 187
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    .line 188
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    .line 189
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    .line 190
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    .line 191
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 192
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 193
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    .line 194
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    .line 195
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    .line 197
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 198
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 200
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 201
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public hideIndicatorGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 628
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 213
    return-void

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f080055
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->IsShutterButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->ShutterButtonIsRestored()V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 273
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 463
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 473
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 477
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v1

    .line 493
    :goto_0
    return v0

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hideIndicatorGroup()V

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 489
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    move v0, v1

    .line 490
    goto :goto_0

    .line 493
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 286
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->enableButtons()V

    .line 311
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 312
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    goto :goto_0

    .line 300
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 350
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

    .line 353
    if-gt p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 372
    return-void

    .line 356
    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 359
    :cond_1
    if-le p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 362
    :cond_2
    if-le p1, v4, :cond_3

    const/16 v0, 0x27

    if-gt p1, v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_3
    const/16 v0, 0x27

    if-le p1, v0, :cond_4

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_4
    const/16 v0, 0x3b

    if-le p1, v0, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 237
    return-void
.end method

.method public stepSecond()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 251
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 7
    .parameter "bytes"

    .prologue
    const-wide/32 v5, 0x49c00

    const-wide/16 v3, 0x400

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 332
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, v5

    long-to-int v0, v1

    .line 333
    .local v0, progress:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 335
    cmp-long v1, p1, v5

    if-ltz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->onClick(Landroid/view/View;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .end local v0           #progress:I
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v3

    const-wide/32 v5, 0x500000

    add-long/2addr v3, v5

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecImage()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 2
    .parameter "second"

    .prologue
    .line 375
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 379
    return-void
.end method
