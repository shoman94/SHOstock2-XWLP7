.class Lcom/android/mms/ui/ComposeMessageFragment$16;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 2000
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2002
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2004
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 2046
    :goto_0
    return v0

    .line 2006
    :sswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2007
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2010
    goto :goto_0

    .line 2016
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2017
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "RecipientEditor DPAD_UP isPopupShowing=true "

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2018
    goto :goto_0

    .line 2022
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z
    invoke-static {v1, v0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z

    .line 2023
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 2029
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2030
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "RecipientEditor DPAD_DOWN isPopupShowing=true "

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2031
    goto :goto_0

    .line 2035
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->findAvailableViewToFocus()V

    goto :goto_0

    .line 2040
    :sswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2004
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
