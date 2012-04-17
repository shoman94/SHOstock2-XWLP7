.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "AccountSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 1
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    .line 832
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 833
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 2

    .prologue
    .line 837
    const-string v0, "AccountSetupWizard"

    const-string v1, "deliverSelfNotifications"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x0

    .line 843
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-static {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$202(Lcom/android/email/activity/setup/snc/AccountSetupWizard;[Lcom/android/emailcommon/provider/EmailContent$Account;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 844
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I
    invoke-static {v2, v5}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$702(Lcom/android/email/activity/setup/snc/AccountSetupWizard;I)I

    .line 846
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mAccountList:[Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    array-length v3, v3

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$702(Lcom/android/email/activity/setup/snc/AccountSetupWizard;I)I

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    const v3, 0x7f1000ac

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 850
    .local v1, gridview:Landroid/widget/GridView;
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;

    .line 851
    .local v0, adapter:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;
    if-eqz v0, :cond_1

    .line 852
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: adapter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ImageAdapter;->notifyDataSetChanged()V

    .line 855
    :cond_1
    const-string v2, "AccountSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: mTotalAccount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I
    invoke-static {v4}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$700(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->mTotalAccount:I
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$700(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)I

    move-result v2

    if-nez v2, :cond_3

    .line 857
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$800(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 858
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$800(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 863
    :cond_2
    :goto_0
    return-void

    .line 860
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$800(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 861
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ChangeObserver;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->doneMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$800(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
