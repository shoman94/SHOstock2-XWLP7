.class Lcom/android/mms/ui/ComposeMessageFragment$25;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->val$mms:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 3402
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->val$mms:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 3403
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->val$mms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3405
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 3412
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->val$mms:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 3413
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 3414
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/GreekInputHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->updateCurrentStatus()V

    .line 3415
    return-void

    .line 3408
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$25;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto :goto_0
.end method
