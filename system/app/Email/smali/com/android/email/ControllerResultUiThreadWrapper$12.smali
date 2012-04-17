.class Lcom/android/email/ControllerResultUiThreadWrapper$12;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->deviceInfoCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$12;,"Lcom/android/email/ControllerResultUiThreadWrapper.12;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$12;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$12;->val$status:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$12;,"Lcom/android/email/ControllerResultUiThreadWrapper.12;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$12;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$12;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$12;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/email/Controller$Result;->deviceInfoCallback(I)V

    goto :goto_0
.end method
