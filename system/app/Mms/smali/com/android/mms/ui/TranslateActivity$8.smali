.class Lcom/android/mms/ui/TranslateActivity$8;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 937
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 955
    :goto_0
    return v0

    .line 944
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 946
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 947
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v3

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v0, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 948
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v3

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v1, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    :cond_1
    :goto_1
    move v0, v1

    .line 955
    goto :goto_0

    .line 949
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 950
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 951
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v3

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v1, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 952
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v3

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v0, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_1
.end method
