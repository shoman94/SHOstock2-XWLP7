.class Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;
.super Ljava/lang/Thread;
.source "ProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

.field final synthetic val$mailboxKey:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;->this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    iput-wide p3, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;->val$mailboxKey:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 186
    const-wide/16 v0, 0x0

    .line 187
    .local v0, currentTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 189
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;->val$mailboxKey:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 191
    .local v2, u:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    .end local v2           #u:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
