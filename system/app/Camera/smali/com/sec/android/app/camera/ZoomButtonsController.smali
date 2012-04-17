.class public Lcom/sec/android/app/camera/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ZoomButtonsController$Container;,
        Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_ZOOM_CONTROLS:I = 0x3

.field private static final MSG_POST_CONFIGURATION_CHANGED:I = 0x2

.field private static final MSG_POST_SET_VISIBLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZoomButtonsController"

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0x0

.field private static final ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14


# instance fields
.field private mAutoDismissControls:Z

.field private mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mContainerRawLocation:[I

.field private final mContext:Landroid/content/Context;

.field private mControls:Lcom/sec/android/app/camera/ZoomControls;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private final mOwnerView:Landroid/view/View;

.field private final mOwnerViewRawLocation:[I

.field private mPostedVisibleInitializer:Ljava/lang/Runnable;

.field private mReleaseTouchListenerOnUp:Z

.field private final mTempIntArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchPaddingScaledSq:I

.field private mTouchTargetView:Landroid/view/View;

.field private final mTouchTargetWindowLocation:[I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "ownerView"

    .prologue
    const/4 v1, 0x2

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mAutoDismissControls:Z

    .line 99
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 106
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    .line 118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTempIntArray:[I

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ZoomButtonsController$1;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ZoomButtonsController$2;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 214
    const/high16 v0, 0x41a0

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 216
    iget v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchPaddingScaledSq:I

    iget v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchPaddingScaledSq:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 218
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ZoomButtonsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ZoomButtonsController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomButtonsController;->onPostConfigurationChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ZoomButtonsController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/ZoomButtonsController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ZoomButtonsController;)Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomButtonsController;->refreshPositioningVariables()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private createContainer()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 257
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 259
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 260
    const v3, 0x20218

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 264
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 265
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 266
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 267
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 269
    iput-object v2, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 271
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController$Container;

    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/ZoomButtonsController$Container;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;Landroid/content/Context;)V

    .line 272
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 275
    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 277
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030015

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 279
    const v3, 0x7f08005f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/ZoomControls;

    iput-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    new-instance v4, Lcom/sec/android/app/camera/ZoomButtonsController$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/ZoomButtonsController$3;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    new-instance v4, Lcom/sec/android/app/camera/ZoomButtonsController$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/ZoomButtonsController$4;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-object v0
.end method

.method private dismissControlsDelayed(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x3

    .line 457
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mAutoDismissControls:Z

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 461
    :cond_0
    return-void
.end method

.method private findViewForTouch(II)Landroid/view/View;
    .locals 12
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 650
    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int v3, p1, v10

    .line 651
    .local v3, containerCoordsX:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v4, p2, v10

    .line 652
    .local v4, containerCoordsY:I
    iget-object v8, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 654
    .local v8, frame:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 655
    .local v1, closestChild:Landroid/view/View;
    const v2, 0x7fffffff

    .line 657
    .local v2, closestChildDistanceSq:I
    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_5

    .line 658
    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 657
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 664
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 691
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return-object v0

    .line 669
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    iget v10, v8, Landroid/graphics/Rect;->left:I

    if-lt v3, v10, :cond_3

    iget v10, v8, Landroid/graphics/Rect;->right:I

    if-gt v3, v10, :cond_3

    .line 670
    const/4 v6, 0x0

    .line 676
    .local v6, distanceX:I
    :goto_3
    iget v10, v8, Landroid/graphics/Rect;->top:I

    if-lt v4, v10, :cond_4

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v10, :cond_4

    .line 677
    const/4 v7, 0x0

    .line 682
    .local v7, distanceY:I
    :goto_4
    mul-int v10, v6, v6

    mul-int v11, v7, v7

    add-int v5, v10, v11

    .line 684
    .local v5, distanceSq:I
    iget v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchPaddingScaledSq:I

    if-ge v5, v10, :cond_0

    if-ge v5, v2, :cond_0

    .line 686
    move-object v1, v0

    .line 687
    move v2, v5

    goto :goto_1

    .line 672
    .end local v5           #distanceSq:I
    .end local v6           #distanceX:I
    .end local v7           #distanceY:I
    :cond_3
    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->right:I

    sub-int v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6       #distanceX:I
    goto :goto_3

    .line 679
    :cond_4
    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7       #distanceY:I
    goto :goto_4

    .end local v0           #child:Landroid/view/View;
    .end local v6           #distanceX:I
    .end local v7           #distanceY:I
    :cond_5
    move-object v0, v1

    .line 691
    goto :goto_2
.end method

.method private isInterestingKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 533
    sparse-switch p1, :sswitch_data_0

    .line 543
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 541
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private onContainerKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 494
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 495
    .local v1, keyCode:I
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->isInterestingKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 502
    .local v0, ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 528
    .end local v0           #ds:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 507
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 509
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 514
    :cond_2
    sget v2, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V

    :cond_3
    move v2, v3

    .line 518
    goto :goto_0
.end method

.method private onPostConfigurationChanged()V
    .locals 1

    .prologue
    .line 695
    sget v0, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 696
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomButtonsController;->refreshPositioningVariables()V

    .line 697
    return-void
.end method

.method private refreshPositioningVariables()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 465
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 470
    .local v1, ownerHeight:I
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 472
    .local v3, ownerWidth:I
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 475
    .local v0, containerOwnerYOffset:I
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 476
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v5, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v5, v5, v6

    aput v5, v4, v6

    .line 477
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v5, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v5, v5, v7

    add-int/2addr v5, v0

    aput v5, v4, v7

    .line 479
    iget-object v2, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTempIntArray:[I

    .line 480
    .local v2, ownerViewWindowLoc:[I
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 483
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v2, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 484
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 485
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v2, v7

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 486
    iget-boolean v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTouchTargetView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 639
    :cond_0
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    return-object v0
.end method

.method public getZoomInEnabled()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomControls;->getIsZoomInEnabled()Z

    move-result v0

    return v0
.end method

.method public getZoomOutEnabled()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomControls;->getIsZoomOutEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutoDismissed()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mAutoDismissControls:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v12, -0x3e60

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 566
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 568
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-le v9, v8, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v4

    .line 573
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    if-eqz v9, :cond_4

    .line 575
    if-eq v0, v8, :cond_2

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3

    .line 576
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 578
    iput-boolean v4, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    :cond_3
    move v4, v8

    .line 582
    goto :goto_0

    .line 585
    :cond_4
    sget v9, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 587
    iget-object v5, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 589
    .local v5, targetView:Landroid/view/View;
    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_1
    :pswitch_0
    if-eqz v5, :cond_0

    .line 606
    iget-object v9, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    aget v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    aget v10, v10, v4

    add-int v6, v9, v10

    .line 607
    .local v6, targetViewRawX:I
    iget-object v9, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerRawLocation:[I

    aget v9, v9, v8

    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    aget v10, v10, v8

    add-int v7, v9, v10

    .line 609
    .local v7, targetViewRawY:I
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 612
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v9, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v9, v9, v4

    sub-int/2addr v9, v6

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v8, v10, v8

    sub-int/2addr v8, v7

    int-to-float v8, v8

    invoke-virtual {v1, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 617
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 618
    .local v2, containerX:F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 619
    .local v3, containerY:F
    cmpg-float v8, v2, v11

    if-gez v8, :cond_5

    cmpl-float v8, v2, v12

    if-lez v8, :cond_5

    .line 620
    neg-float v8, v2

    invoke-virtual {v1, v8, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 622
    :cond_5
    cmpg-float v8, v3, v11

    if-gez v8, :cond_6

    cmpl-float v8, v3, v12

    if-lez v8, :cond_6

    .line 623
    neg-float v8, v3

    invoke-virtual {v1, v11, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 625
    :cond_6
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 626
    .local v4, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 591
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #containerX:F
    .end local v3           #containerY:F
    .end local v4           #retValue:Z
    .end local v6           #targetViewRawX:I
    .end local v7           #targetViewRawY:I
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/camera/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;

    move-result-object v5

    .line 592
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    goto :goto_1

    .line 597
    :pswitch_2
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    goto :goto_1

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoDismissed(Z)V
    .locals 1
    .parameter "autoDismiss"

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mAutoDismissControls:Z

    if-ne v0, p1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mAutoDismissControls:Z

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 4
    .parameter "focusable"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 316
    .local v0, oldFlags:I
    if-eqz p1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    :cond_0
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setOnZoomListener(Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    .line 305
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget v0, Lcom/sec/android/app/camera/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 378
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    if-eq v0, p1, :cond_0

    .line 381
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mIsVisible:Z

    .line 383
    if-eqz p1, :cond_5

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 391
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ZoomButtonsController$5;-><init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    goto :goto_0

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mCallback:Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method public setZoomInEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 228
    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 237
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController;->mControls:Lcom/sec/android/app/camera/ZoomControls;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/ZoomControls;->setZoomSpeed(J)V

    .line 246
    return-void
.end method
