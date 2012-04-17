.class Lcom/android/mms/ui/TranslateActivity$7;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 925
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 927
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 930
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$7;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_0
.end method
