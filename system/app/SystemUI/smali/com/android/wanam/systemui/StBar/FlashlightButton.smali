.class public Lcom/android/wanam/systemui/StBar/FlashlightButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "FlashlightButton.java"


# instance fields
.field private mGotInfo:Z

.field private mIsFlashSupported:Z

.field private mLedController:Lcom/android/wanam/util/LedController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mGotInfo:Z

    invoke-static {}, Lcom/android/wanam/util/LedController;->getInstance()Lcom/android/wanam/util/LedController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mLedController:Lcom/android/wanam/util/LedController;

    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    return-void
.end method

.method private startFlashltActivity()V
    .locals 3

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/wanam/systemui/StBar/FlashltActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x30b004d

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mGotInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mLedController:Lcom/android/wanam/util/LedController;

    invoke-virtual {v0}, Lcom/android/wanam/util/LedController;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mIsFlashSupported:Z

    iput-boolean v1, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mGotInfo:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mLedController:Lcom/android/wanam/util/LedController;

    invoke-virtual {v0}, Lcom/android/wanam/util/LedController;->off()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/FlashlightButton;->update()V

    :goto_1
    return-void

    :cond_1
    iput v1, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mLedController:Lcom/android/wanam/util/LedController;

    invoke-virtual {v0}, Lcom/android/wanam/util/LedController;->on()V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/FlashlightButton;->startFlashltActivity()V

    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    iget v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mState:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x302007b

    iput v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mIcon:I

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x302007c

    iput v0, p0, Lcom/android/wanam/systemui/StBar/FlashlightButton;->mIcon:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
