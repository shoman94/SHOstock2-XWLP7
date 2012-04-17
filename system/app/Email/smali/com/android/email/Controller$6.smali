.class Lcom/android/email/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->renameFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    iput-object p4, p0, Lcom/android/email/Controller$6;->val$folderName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x0

    .line 882
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 884
    .local v8, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v8, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    invoke-virtual {v0, v11, v1, v4, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 899
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x31

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    invoke-virtual {v0, v11, v1, v4, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller$6;->val$folderName:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 906
    .local v9, tempFolderName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parentServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

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

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, WHERE_SUBFOLDERS:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

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

    .line 916
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x33

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/email/ControllerUtility$CallbackWrapper;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    if-eqz v6, :cond_0

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 925
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_3
    throw v0

    :cond_4
    if-eqz v6, :cond_5

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 929
    :cond_5
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/email/Controller$6;->val$mailboxId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 930
    .local v10, uri:Landroid/net/Uri;
    const-string v0, "\'\'"

    const-string v1, "\'"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 931
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 932
    iput-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 934
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 936
    .local v7, cv:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, v7, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 943
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$6;->val$folderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/android/email/adapter/ProtocolAdapter;->renameFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_0
.end method
