.class Lcom/android/mms/ui/ComposeMessageFragment$71;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 8033
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 8035
    if-eqz p2, :cond_1

    .line 8036
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 8051
    :cond_0
    :goto_0
    return-void

    .line 8037
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8040
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 8041
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, p1

    .line 8043
    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8044
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->isDelete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8045
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8046
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 8048
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method
