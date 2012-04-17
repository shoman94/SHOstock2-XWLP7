.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    .line 590
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 591
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, -0x31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 592
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 594
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 595
    invoke-static {v1}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 597
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$400(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    .line 599
    return-void
.end method
