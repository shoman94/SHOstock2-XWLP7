.class Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListener"
.end annotation


# instance fields
.field private mContinueIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1080
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1082
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1098
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onResume()V

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
    .locals 0
    .parameter "intent"

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    .line 1075
    return-object p0
.end method
