.class Lcom/android/email/ControllerResultUiThreadWrapper$8;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->deleteAccountCallback(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$accountId:J

.field final synthetic val$status:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;Landroid/os/Bundle;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$8;,"Lcom/android/email/ControllerResultUiThreadWrapper.8;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->val$status:Landroid/os/Bundle;

    iput-wide p3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$8;,"Lcom/android/email/ControllerResultUiThreadWrapper.8;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->val$status:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$8;->val$accountId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0
.end method
