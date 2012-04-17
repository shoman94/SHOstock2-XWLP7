.class Lcom/android/email/Controller$8;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->searchOnServer(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    iput-object p4, p0, Lcom/android/email/Controller$8;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x3d

    const/4 v6, 0x0

    .line 1905
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 1906
    .local v11, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v11, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1911
    :cond_1
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    .line 1913
    .local v9, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v9, :cond_2

    .line 1914
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iget-object v0, v0, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v4, p0, Lcom/android/email/Controller$8;->val$mailboxId:J

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/ControllerUtility$CallbackWrapper;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_0

    .line 1918
    :cond_2
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v10

    .line 1920
    .local v10, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v10, :cond_0

    iget v0, v10, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    if-lez v0, :cond_0

    .line 1921
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1928
    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$8;->val$searchText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v2}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v2

    invoke-virtual {v0, v9, v11, v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V

    goto :goto_0
.end method
