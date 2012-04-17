.class Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mCheckHost:Ljava/lang/String;

.field private final mCheckLogin:Ljava/lang/String;

.field private final mCheckSettingsMode:I

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 285
    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    .line 286
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    .line 287
    iput-object p5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    .line 288
    iput p6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    .line 289
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter "params"

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, emailParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, username:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mAccountId:J

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 299
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4
    .parameter "duplicateAccount"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 305
    .local v1, fragment:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    if-eqz p1, :cond_0

    .line 307
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v0

    .line 309
    .local v0, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DuplicateAccountDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 315
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 316
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->mCheckSettingsMode:I

    invoke-interface {v2, v3, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
