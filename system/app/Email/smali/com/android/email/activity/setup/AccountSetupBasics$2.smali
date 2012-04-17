.class Lcom/android/email/activity/setup/AccountSetupBasics$2;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, tmp:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, tmpEmail:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 716
    :cond_0
    const-string v4, "Other"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 717
    const-string v2, ""

    .line 720
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 723
    .local v0, loc_e:I
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 725
    .local v1, loc_s:I
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 727
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 729
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-le v1, v4, :cond_3

    .line 730
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 732
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 736
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
