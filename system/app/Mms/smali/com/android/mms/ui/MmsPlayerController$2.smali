.class Lcom/android/mms/ui/MmsPlayerController$2;
.super Landroid/os/Handler;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 340
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, code:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 344
    :pswitch_0
    const-string v2, "CRO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "TNL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "MAX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "TRG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "DTM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "TMZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "MBM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "TPL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #calls: Lcom/android/mms/ui/MmsPlayerController;->setProgress()I
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerController;->access$100(Lcom/android/mms/ui/MmsPlayerController;)I

    move-result v1

    .line 350
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerController;->access$200(Lcom/android/mms/ui/MmsPlayerController;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerController;->access$000(Lcom/android/mms/ui/MmsPlayerController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerController;->access$300(Lcom/android/mms/ui/MmsPlayerController;)Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 352
    rem-int/lit16 v2, v1, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/ui/MmsPlayerController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
