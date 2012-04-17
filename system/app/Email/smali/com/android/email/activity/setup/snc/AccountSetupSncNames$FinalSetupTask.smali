.class Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupSncNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 583
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mContext:Landroid/content/Context;

    .line 584
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    .line 589
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 590
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "displayName"

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v2, "senderName"

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v2, "syncLookback"

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v2, "emailsize"

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 596
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    .line 597
    .local v1, syncData:Lcom/android/emailcommon/utility/SyncScheduleData;
    const-string v2, "peakDays"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v2, "peakStartMinute"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v2, "peakEndMinute"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v2, "peakSchedule"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v2, "offPeakSchedule"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v2, "roamingSchedule"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v2, "flags"

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 609
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-static {v2}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 610
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 575
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "isSecurityHold"

    .prologue
    const/4 v4, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 619
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 624
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finishActivity()V
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->access$100(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 575
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
