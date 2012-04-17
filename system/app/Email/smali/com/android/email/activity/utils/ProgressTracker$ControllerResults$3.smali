.class Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;
.super Ljava/lang/Object;
.source "ProgressTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->updateUserProfileCallback(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;->this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    iput p2, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 229
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 230
    .local v1, accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_2

    .line 231
    move-object v2, v1

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 232
    .local v0, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v6}, Lcom/android/email/esp/ServiceProvider;->getTransportFromType(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    const-string v7, "SNC_PROFILE_RETRIVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v3, cv:Landroid/content/ContentValues;
    iget v6, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;->val$resultCode:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 240
    const-string v6, "compatibilityUuid"

    const-string v7, "SNC_PROFILE_BACKUP_FAILED"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v6, "ProgressTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exchange profile for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to back up in SNC Server"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    const/4 v6, 0x0

    sput-object v6, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 253
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 257
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 231
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    .restart local v3       #cv:Landroid/content/ContentValues;
    :cond_1
    const-string v6, "compatibilityUuid"

    const-string v7, "SNC_PROFILE_BACKEDUP"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v6, "ProgressTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exchange profile for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "backed up in SNC Server"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v0           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void
.end method
