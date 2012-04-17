.class Lcom/android/email/Controller$5;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->createFolder(Ljava/lang/String;JJZ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountKey:J

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$mailboxId:J

.field final synthetic val$root:Z


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JZLjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$5;->val$mailboxId:J

    iput-boolean p4, p0, Lcom/android/email/Controller$5;->val$root:Z

    iput-object p5, p0, Lcom/android/email/Controller$5;->val$folderName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/email/Controller$5;->val$accountKey:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x4

    .line 832
    iget-object v0, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$5;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 833
    .local v7, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v7, :cond_1

    .line 834
    iget-boolean v0, p0, Lcom/android/email/Controller$5;->val$root:Z

    if-nez v0, :cond_4

    .line 835
    iget-object v0, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$5;->val$mailboxId:J

    invoke-virtual {v0, v9, v1, v4, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    const/4 v3, 0x0

    .line 844
    .local v3, WHERE_SUBFOLDERS:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/Controller$5;->val$folderName:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 846
    .local v8, tempFolderName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 852
    iget-object v0, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 856
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/android/email/Controller$5;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x33

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$5;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    if-eqz v6, :cond_0

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 867
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 867
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 873
    .end local v3           #WHERE_SUBFOLDERS:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #tempFolderName:Ljava/lang/String;
    :cond_4
    iget-wide v0, p0, Lcom/android/email/Controller$5;->val$accountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$5;->val$folderName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/email/Controller$5;->val$accountKey:J

    invoke-virtual {v0, v1, v7, v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->createFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V

    goto/16 :goto_0
.end method
