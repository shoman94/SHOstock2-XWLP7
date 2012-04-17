.class final Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;
.super Landroid/os/Handler;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IMEITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;-><init>(Lcom/android/mms/transaction/IMEITrackerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 626
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 627
    .local v0, opcode:I
    const-string v1, "IMEITrackerService"

    const-string v2, "ServiceHandler-1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    packed-switch v0, :pswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 630
    :pswitch_0
    const-string v1, "IMEITrackerService"

    const-string v2, "ServiceHandler-2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
