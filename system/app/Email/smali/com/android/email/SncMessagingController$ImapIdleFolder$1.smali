.class Lcom/android/email/SncMessagingController$ImapIdleFolder$1;
.super Ljava/lang/Thread;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController$ImapIdleFolder;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 4556
    iput-object p1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 4560
    const/4 v1, 0x3

    .line 4564
    .local v1, retryCount:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mPaused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v10, :cond_3

    add-int/lit8 v2, v1, -0x1

    .end local v1           #retryCount:I
    .local v2, retryCount:I
    if-lez v1, :cond_8

    .line 4569
    :try_start_0
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 4570
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    .line 4574
    :cond_1
    const-string v3, "IDLE "

    const-string v4, "Open the remote folder. This pre-loads certain metadata like message count"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4576
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 4581
    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4582
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/SncMessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    invoke-static {v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->access$1400(Lcom/android/email/SncMessagingController$ImapIdleFolder;)Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V

    .line 4583
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "Got tagged final response!"

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 4584
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mResetCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mResetCount:I

    .line 4585
    const/4 v1, 0x0

    .line 4586
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 4587
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "Got Final tagged response"

    iput-object v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4610
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    .line 4613
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 4617
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 4588
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catch_0
    move-exception v0

    move v1, v2

    .line 4589
    .end local v2           #retryCount:I
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #retryCount:I
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 4590
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/16 v4, 0x39

    if-ne v3, v4, :cond_4

    .line 4591
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "IDLE not supported :("

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 4592
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "IDlE not supported!"

    iput-object v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4610
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    .line 4613
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 4617
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4624
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "Thread Exited"

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 4625
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-virtual {v3, v10}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->close(Z)V

    .line 4627
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_7

    .line 4630
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5, v11}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    .line 4634
    :goto_3
    return-void

    .line 4594
    .restart local v0       #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    .line 4595
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    const-string v4, "Ignoring connection readtimeout exception alone"

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 4596
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mConnTimeout:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mConnTimeout:I

    .line 4597
    add-int/lit8 v1, v1, 0x1

    .line 4601
    :cond_5
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 4602
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start failed - MsgEx got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RetryCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v5, v5, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4610
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    .line 4613
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 4617
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 4604
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catch_1
    move-exception v0

    move v1, v2

    .line 4605
    .end local v2           #retryCount:I
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #retryCount:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartIdling failed - Ex got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RetryCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v5, v5, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/SncMessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 4607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4608
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4610
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    .line 4613
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 4617
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 4610
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catchall_0
    move-exception v3

    move v1, v2

    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    :goto_5
    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget v5, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mRetryCount:I

    .line 4613
    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 4617
    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    throw v3

    .line 4632
    :cond_7
    iget-object v3, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/SncMessagingController$ImapIdleFolder;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/SncMessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v3, v4, v9, v9}, Lcom/android/email/Controller$ServiceCallback;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V

    goto/16 :goto_3

    .line 4610
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 4604
    :catch_2
    move-exception v0

    goto :goto_4

    .line 4588
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :cond_8
    move v1, v2

    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    goto/16 :goto_2
.end method
