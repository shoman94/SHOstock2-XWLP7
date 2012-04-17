.class Lcom/android/email/activity/UpgradeAccounts$7;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UpgradeAccounts;->fetchCredentialsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;

.field final synthetic val$creadentialView:Landroid/view/View;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$creadentialView:Landroid/view/View;

    iput p3, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 635
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 636
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$creadentialView:Landroid/view/View;

    const v5, 0x7f10003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 638
    .local v1, emailEdit:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$creadentialView:Landroid/view/View;

    const v5, 0x7f10001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 640
    .local v3, passwordEdit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v4, v2}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 643
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v4, v0}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 644
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    .line 645
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v4, v4, v5

    iput-boolean v9, v4, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 646
    invoke-static {v9}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 647
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/UpgradeAccounts;->createAcounts(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConversionTask fetchCredentialsDialog   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    new-instance v5, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v7}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v7

    iget v8, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    aget-object v7, v7, v8

    iget v8, p0, Lcom/android/email/activity/UpgradeAccounts$7;->val$i:I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V

    #setter for: Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    invoke-static {v4, v5}, Lcom/android/email/activity/UpgradeAccounts;->access$102(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$ConversionTask;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 652
    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$7;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
    invoke-static {v4}, Lcom/android/email/activity/UpgradeAccounts;->access$100(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 654
    :cond_0
    return-void
.end method
