.class Lcom/sec/android/app/camera/ZoomButtonsController$2;
.super Landroid/os/Handler;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$2;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$2;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #calls: Lcom/sec/android/app/camera/ZoomButtonsController;->onPostConfigurationChanged()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$200(Lcom/sec/android/app/camera/ZoomButtonsController;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$2;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$2;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #getter for: Lcom/sec/android/app/camera/ZoomButtonsController;->mOwnerView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$300(Lcom/sec/android/app/camera/ZoomButtonsController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "ZoomButtonsController"

    const-string v1, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$2;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
