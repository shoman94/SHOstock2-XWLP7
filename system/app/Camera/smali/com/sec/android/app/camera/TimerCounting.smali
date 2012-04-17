.class public Lcom/sec/android/app/camera/TimerCounting;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TimerCounting.java"


# static fields
.field private static final TIMER_SOUND:I


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field public mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTextLayout:Landroid/widget/RelativeLayout;

.field private mTimerCountNum:Landroid/widget/TextView;

.field private mTimerValue:I


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

    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 38
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    .line 168
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 169
    iput v7, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    .line 170
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 171
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 172
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 173
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerCounting;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/TimerCounting;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TimerCounting;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/TimerCounting;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/TimerCounting;IILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/TimerCounting;->rotateButton(IILandroid/view/View;Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerCounting;->setOrientationListener()V

    .line 62
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

    .line 176
    if-ne p1, p2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 178
    :cond_0
    if-nez p1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    if-ne v0, v5, :cond_3

    .line 179
    const/16 p1, 0x168

    .line 184
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 185
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 187
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 193
    if-eqz p4, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 180
    :cond_3
    if-ne p1, v5, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    if-nez v0, :cond_1

    .line 181
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    goto/16 :goto_1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 239
    move v0, p1

    .line 240
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 245
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 246
    const/4 v1, 0x0

    .line 256
    .local v1, retVal:I
    :goto_0
    return v1

    .line 247
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 248
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 249
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 250
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 251
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 252
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 254
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/sec/android/app/camera/TimerCounting$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/TimerCounting$1;-><init>(Lcom/sec/android/app/camera/TimerCounting;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 236
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 112
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cancelShutterTimer()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 118
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/TimerCounting;->setTouchHandled(Z)V

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/TimerCounting;->setTouchHandled(Z)V

    .line 124
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 135
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 150
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 103
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerCounting;->setOrientationListener()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/TimerCounting;->setTouchHandled(Z)V

    .line 131
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 132
    return-void
.end method

.method public setOrientaion(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 262
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TimerCounting;->roundOrientation(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 268
    .local v0, degree:I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 269
    add-int/lit16 v0, v0, -0x168

    .line 271
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/TimerCounting;->rotateButton(IILandroid/view/View;Z)V

    .line 275
    iput v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateCountingNum(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 66
    iput p1, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 94
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-ge v0, v5, :cond_3

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 92
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/TimerCounting;->rotateButton(IILandroid/view/View;Z)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-ge v0, v5, :cond_6

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1
.end method
