.class public Lcom/android/email/data/MailboxAccountLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MailboxAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/data/MailboxAccountLoader$1;,
        Lcom/android/email/data/MailboxAccountLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/data/MailboxAccountLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 56
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    .line 60
    iput-wide p2, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    .line 61
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;
    .locals 11

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, found:Z
    const/4 v2, 0x0

    .line 67
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v3, 0x0

    .line 68
    .local v3, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v4, 0x0

    .line 69
    .local v4, isEasAccount:Z
    const/4 v5, 0x0

    .line 71
    .local v5, isRefreshable:Z
    iget-wide v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 75
    iget-wide v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 76
    const/4 v5, 0x1

    .line 91
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 92
    .local v6, countAccounts:I
    new-instance v0, Lcom/android/email/data/MailboxAccountLoader$Result;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/data/MailboxAccountLoader$Result;-><init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZILcom/android/email/data/MailboxAccountLoader$1;)V

    .line 94
    .local v0, result:Lcom/android/email/data/MailboxAccountLoader$Result;
    return-object v0

    .line 79
    .end local v0           #result:Lcom/android/email/data/MailboxAccountLoader$Result;
    .end local v6           #countAccounts:I
    :cond_1
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    const/4 v1, 0x1

    .line 84
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v4

    .line 85
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;JZ)Z

    move-result v5

    goto :goto_0

    .line 87
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->stopLoading()V

    .line 111
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    .line 100
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->forceLoad()V

    .line 101
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    .line 106
    return-void
.end method
