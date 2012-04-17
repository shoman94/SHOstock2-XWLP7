.class public Lcom/sec/android/app/camera/HelptextForShootingMode;
.super Lcom/sec/android/app/camera/MenuBase;
.source "HelptextForShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/HelptextForShootingMode$1;,
        Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;
    }
.end annotation


# static fields
.field private static final MENU_TIMER_INTERVAL:J = 0x1388L

.field private static final MSG_TIMER_OUT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHelptext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    .line 32
    iput-object v1, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    .line 34
    new-instance v0, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;-><init>(Lcom/sec/android/app/camera/HelptextForShootingMode;Lcom/sec/android/app/camera/HelptextForShootingMode$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    .line 59
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 64
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 95
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 106
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 108
    const/4 v0, 0x1

    .line 118
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x17

    if-eq p1, v1, :cond_3

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 122
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 132
    :cond_1
    :goto_0
    return v0

    .line 126
    :cond_2
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 103
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->setHelptextVisible()V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->startHelptextPopupTimer()V

    .line 90
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 91
    return-void
.end method

.method public setHelptextVisible()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public startHelptextPopupTimer()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    return-void
.end method

.method public stopHelptextPopupTimer()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    return-void
.end method
