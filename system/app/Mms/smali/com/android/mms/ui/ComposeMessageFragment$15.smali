.class Lcom/android/mms/ui/ComposeMessageFragment$15;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1976
    if-nez p2, :cond_3

    .line 1977
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1978
    .local v0, showErrorDialog:Z
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z
    invoke-static {v2, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z

    .line 1980
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1981
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1982
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1984
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 1997
    .end local v0           #showErrorDialog:Z
    :cond_2
    :goto_0
    return-void

    .line 1988
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 1989
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 1990
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1993
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1994
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method
