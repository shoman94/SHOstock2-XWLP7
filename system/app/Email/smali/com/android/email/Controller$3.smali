.class Lcom/android/email/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteFolder(J)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 707
    .local v9, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 709
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v10

    .line 711
    .local v10, trashMailboxId:J
    if-nez v9, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    .line 766
    :goto_0
    return-void

    .line 722
    :cond_0
    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 727
    .local v7, cr:Landroid/database/Cursor;
    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/email/Controller;->moveFolder(JJ)V

    goto :goto_0

    .line 731
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 733
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/email/Controller;->moveFolder(JJ)V

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 742
    .end local v7           #cr:Landroid/database/Cursor;
    :cond_2
    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    .line 747
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    .line 754
    :cond_3
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 756
    .local v12, uri:Landroid/net/Uri;
    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 758
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 760
    .local v8, cv:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/email/adapter/ProtocolAdapter;->deleteFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_0
.end method
