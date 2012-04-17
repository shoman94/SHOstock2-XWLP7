.class Lcom/android/email/ControllerResultUiThreadWrapper$14;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->modifyUserAccountCallback(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$14;,"Lcom/android/email/ControllerResultUiThreadWrapper.14;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$14;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$14;->val$bundle:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$14;,"Lcom/android/email/ControllerResultUiThreadWrapper.14;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$14;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$14;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$14;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller$Result;->modifyUserAccountCallback(Landroid/os/Bundle;)V

    goto :goto_0
.end method
