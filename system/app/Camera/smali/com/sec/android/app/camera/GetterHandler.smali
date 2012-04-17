.class Lcom/sec/android/app/camera/GetterHandler;
.super Landroid/os/Handler;
.source "ImageGetter.java"


# static fields
.field private static final IMAGE_GETTER_CALLBACK:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "callback"
    .parameter "delay"

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 325
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 327
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 318
    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 319
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/GetterHandler;->removeMessages(I)V

    .line 333
    return-void
.end method
