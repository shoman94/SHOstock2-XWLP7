.class Lcom/android/email/MessagingController$22$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/MessagingController$22;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController$22;)V
    .locals 0
    .parameter

    .prologue
    .line 5782
    iput-object p1, p0, Lcom/android/email/MessagingController$22$1;->this$1:Lcom/android/email/MessagingController$22;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5784
    iget-object v0, p0, Lcom/android/email/MessagingController$22$1;->this$1:Lcom/android/email/MessagingController$22;

    iget-object v0, v0, Lcom/android/email/MessagingController$22;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$1200(Lcom/android/email/MessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5785
    iget-object v0, p0, Lcom/android/email/MessagingController$22$1;->this$1:Lcom/android/email/MessagingController$22;

    iget-object v0, v0, Lcom/android/email/MessagingController$22;->this$0:Lcom/android/email/MessagingController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    .line 5786
    return-void
.end method
