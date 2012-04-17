.class Lcom/android/mms/ui/ComposeMessageFragment$72;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 8054
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 8056
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 8057
    sparse-switch p2, :sswitch_data_0

    .line 8073
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    move-object v0, p1

    .line 8059
    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8060
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_0

    .line 8064
    .end local v0           #toButton:Lcom/android/mms/ui/ToButton;
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 8068
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 8069
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$72;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    .line 8057
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
