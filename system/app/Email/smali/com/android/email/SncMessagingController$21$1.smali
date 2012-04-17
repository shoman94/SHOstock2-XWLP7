.class Lcom/android/email/SncMessagingController$21$1;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/SncMessagingController$21;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController$21;)V
    .locals 0
    .parameter

    .prologue
    .line 4396
    iput-object p1, p0, Lcom/android/email/SncMessagingController$21$1;->this$1:Lcom/android/email/SncMessagingController$21;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4398
    iget-object v0, p0, Lcom/android/email/SncMessagingController$21$1;->this$1:Lcom/android/email/SncMessagingController$21;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$21;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$1000(Lcom/android/email/SncMessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4399
    iget-object v0, p0, Lcom/android/email/SncMessagingController$21$1;->this$1:Lcom/android/email/SncMessagingController$21;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$21;->this$0:Lcom/android/email/SncMessagingController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/SncMessagingController;->resetIdling(Z)V

    .line 4400
    return-void
.end method
