.class Lcom/android/email/activity/setup/AccountSetupOptions$2;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$calendar2:Z

.field final synthetic val$contacts2:Z

.field final synthetic val$email2:Z

.field final synthetic val$tasks2:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$email2:Z

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$calendar2:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$contacts2:Z

    iput-boolean p6, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$tasks2:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 660
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 661
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v7

    .line 664
    .local v7, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v7, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$email2:Z

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$calendar2:Z

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$contacts2:Z

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->val$tasks2:Z

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 673
    .end local v7           #ps:Lcom/android/emailcommon/service/PolicySet;
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptions;->optionsComplete()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$200(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    goto :goto_0
.end method
