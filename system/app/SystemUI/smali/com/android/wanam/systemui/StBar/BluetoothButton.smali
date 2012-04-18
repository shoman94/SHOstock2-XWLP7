.class public Lcom/android/wanam/systemui/StBar/BluetoothButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wanam/systemui/StBar/BluetoothButton$1;,
        Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field private static final sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/android/wanam/systemui/StBar/BluetoothButton$1;)V

    sput-object v0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b0046

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/wanam/systemui/StBar/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected toggleState()V
    .locals 2

    sget-object v0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->toggleState(Landroid/content/Context;)V

    return-void
.end method

.method protected updateState()V
    .locals 4

    const v3, 0x3020074

    const v2, 0x3020073

    sget-object v0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mState:I

    iget v0, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v2, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mIcon:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mIcon:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->sBluetoothState:Lcom/android/wanam/systemui/StBar/StateTracker;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mIcon:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton;->mIcon:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
