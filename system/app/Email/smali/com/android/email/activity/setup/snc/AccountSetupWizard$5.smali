.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

.field final synthetic val$mProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->val$mProvider:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 751
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->val$mProvider:Ljava/lang/String;

    const-string v3, "Corporate"

    if-ne v2, v3, :cond_1

    .line 752
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addExchangeAccount()V
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    .line 774
    :goto_0
    sget-boolean v2, Lcom/android/email/Email;->SETUP_FROM_ACCOUNT_MANAGER_FLOW:Z

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->finish()V

    .line 777
    :cond_0
    :goto_1
    return-void

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->val$mProvider:Ljava/lang/String;

    const-string v3, "@verizon.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 756
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 759
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$500(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)Landroid/app/AlertDialog;

    goto :goto_1

    .line 762
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "AccountSetupWizard"

    const-string v3, "Verizon -  Legacy Account"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.android.email.CREATE_ACCOUNT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "MAIL_PROVIDER"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/email/esp/ServiceProvider;->getProviderString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 772
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$5;->val$mProvider:Ljava/lang/String;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupWizard;->addMailAccount(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$600(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Ljava/lang/String;)V

    goto :goto_0
.end method
