.class final Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "PushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "_looper"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    .line 322
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 327
    const-string v4, "Mms/PushReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage. msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 330
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 332
    .local v2, userData:[B
    new-instance v3, Lcom/android/mms/transaction/WapPushMessage;

    invoke-direct {v3}, Lcom/android/mms/transaction/WapPushMessage;-><init>()V

    .line 335
    .local v3, wpMessage:Lcom/android/mms/transaction/WapPushMessage;
    :try_start_0
    const-string v4, "Mms/PushReceiverService"

    const-string v5, "parse userData."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/WapPushMessage;->parse([B)V

    .line 338
    const-string v4, "Mms/PushReceiverService"

    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 360
    const-string v4, "Mms/PushReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protocol. publicID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "Mms/PushReceiverService"

    const-string v5, "Fail to parse WAP Push message."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 347
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    #calls: Lcom/android/mms/transaction/PushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    invoke-static {v4, v3}, Lcom/android/mms/transaction/PushReceiverService;->access$400(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    #calls: Lcom/android/mms/transaction/PushReceiverService;->handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V
    invoke-static {v4, v3}, Lcom/android/mms/transaction/PushReceiverService;->access$500(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
