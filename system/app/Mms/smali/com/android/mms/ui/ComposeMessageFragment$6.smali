.class Lcom/android/mms/ui/ComposeMessageFragment$6;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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
    .line 761
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$6;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 763
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v3

    .line 767
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEndterKey()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 769
    const/16 v5, 0x42

    if-ne p2, v5, :cond_2

    .line 770
    const-string v3, "Mms/ComposeMessageFragment"

    const-string v5, "Enter Key is Disable Function in Messaging"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 771
    goto :goto_0

    .line 776
    :cond_2
    const/16 v5, 0x15

    if-ne p2, v5, :cond_0

    .line 778
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 779
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    if-nez v5, :cond_0

    .line 780
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$6;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 781
    goto :goto_0

    .line 783
    .end local v1           #edit:Landroid/widget/EditText;
    :catch_0
    move-exception v2

    .line 784
    .local v2, ex:Ljava/lang/ClassCastException;
    const-string v4, "Mms/ComposeMessageFragment"

    const-string v5, "key event not from EditText"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
