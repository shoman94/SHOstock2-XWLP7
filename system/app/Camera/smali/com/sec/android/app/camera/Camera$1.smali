.class Lcom/sec/android/app/camera/Camera$1;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 415
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/sec/android/app/camera/Camera;->ACTIVE_USER:I

    if-ne v2, v3, :cond_2

    .line 418
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/camera/Camera$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$1$1;-><init>(Lcom/sec/android/app/camera/Camera$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 465
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/sec/android/app/camera/Camera;->CANCEL_ACTIVE_USER:I

    if-ne v2, v3, :cond_3

    .line 433
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/camera/Camera$1$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$1$2;-><init>(Lcom/sec/android/app/camera/Camera$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 448
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/sec/android/app/camera/Camera;->REFESH_VIEW_COMMAND:I

    if-ne v2, v3, :cond_4

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto :goto_0

    .line 450
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/sec/android/app/camera/Camera;->ACTIVE_REQUEST_TIMEOUT:I

    if-ne v2, v3, :cond_1

    .line 451
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;

    move-result-object v1

    .line 452
    .local v1, user:Lcom/samsung/shareshot/User;
    if-eqz v1, :cond_1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
