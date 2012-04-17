.class public Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 5274
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .locals 5
    .parameter "statusCode"

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x3c

    const/16 v3, 0x19

    const/16 v2, 0xa

    .line 5674
    sparse-switch p1, :sswitch_data_0

    .line 5761
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 5679
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5682
    :sswitch_1
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5685
    :sswitch_2
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 5688
    :sswitch_3
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 5692
    :sswitch_4
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x10

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5698
    :sswitch_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 5705
    :sswitch_6
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x4

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5708
    :sswitch_7
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x3

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5713
    :sswitch_8
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x29

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5716
    :sswitch_9
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5719
    :sswitch_a
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2b

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5723
    :sswitch_b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x35

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5726
    :sswitch_c
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x36

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5729
    :sswitch_d
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x3a

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 5734
    :sswitch_e
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50001

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 5736
    :sswitch_f
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50002

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 5738
    :sswitch_10
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50003

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5740
    :sswitch_11
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50004

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5743
    :sswitch_12
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50005

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5746
    :sswitch_13
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5748
    :sswitch_14
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50006

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5751
    :sswitch_15
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 5674
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_a
        -0x5 -> :sswitch_9
        -0x4 -> :sswitch_8
        -0x3 -> :sswitch_13
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x18 -> :sswitch_0
        0x20 -> :sswitch_2
        0x27 -> :sswitch_14
        0xa8 -> :sswitch_e
        0xa9 -> :sswitch_f
        0xaa -> :sswitch_10
        0xab -> :sswitch_11
        0xac -> :sswitch_12
        0xad -> :sswitch_15
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_c
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x60000 -> :sswitch_d
        0x100000 -> :sswitch_4
        0x120000 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public addUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 5
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 5833
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accountId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5835
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5836
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5837
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->addUserAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 5839
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5840
    return-void
.end method

.method public checkMailStatus(JJIIJ)V
    .locals 14
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 5853
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5854
    .local v12, result:Lcom/android/emailcommon/mail/MessagingException;
    const-string v3, "EVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkMailStatus] [accId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [mbId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [exceptionType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [tag - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5858
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v13

    monitor-enter v13

    .line 5859
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 5860
    .local v2, l:Lcom/android/email/Controller$Result;
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 5863
    .end local v2           #l:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5864
    return-void
.end method

.method public deactivateSnc()V
    .locals 4

    .prologue
    .line 5898
    const-string v2, "EVENT@CONTR"

    const-string v3, "[deactivateSnc]"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5899
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5900
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5901
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1}, Lcom/android/email/Controller$Result;->deactivateSncCallback()V

    goto :goto_0

    .line 5903
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5904
    return-void
.end method

.method public deleteAccountFromWebPortal(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 5888
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteAccountFromWebPortal] [accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " emailId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5890
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5891
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5892
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountFromWebCallback(JLjava/lang/String;)V

    goto :goto_0

    .line 5894
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5895
    return-void
.end method

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 5
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 5556
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteUserAccountStatus] [bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5558
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5559
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5560
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 5562
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5563
    return-void
.end method

.method public deviceInfoStatus(I)V
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5546
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5547
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5548
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->deviceInfoCallback(I)V

    goto :goto_0

    .line 5550
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5551
    return-void
.end method

.method public emptyTrashStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5462
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5463
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5475
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5476
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5477
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 5479
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5465
    :pswitch_0
    const/16 p4, 0x64

    .line 5466
    goto :goto_0

    .line 5469
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 5480
    :cond_1
    :goto_2
    return-void

    .line 5479
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public folderCommandStatus(IJI)V
    .locals 5
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5447
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5449
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5450
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5451
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    .line 5456
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5458
    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V
    .locals 7
    .parameter "mailbox"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5874
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5875
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    const-string v3, "EVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[folderPushStatus] [mailboxId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [exceptionType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5879
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5880
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5881
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-direct {p0, p2}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p3}, Lcom/android/email/Controller$Result;->folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_0

    .line 5883
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5884
    return-void
.end method

.method public getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 5
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5794
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAvailableAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5797
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5798
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    .line 5800
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5801
    return-void
.end method

.method public getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 5
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5804
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserConfiguredAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncUserEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5806
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5807
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5808
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    .line 5810
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5811
    return-void
.end method

.method public getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 5
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 5814
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncProfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5817
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5818
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    .line 5820
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5821
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 12
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5284
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5286
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p5, :pswitch_data_0

    .line 5316
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v3

    .line 5317
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    .line 5318
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .local v1, listener:Lcom/android/email/Controller$Result;
    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p6

    .line 5319
    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 5322
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5288
    .end local v3           #accountId:J
    :pswitch_0
    const/16 p6, 0x64

    .line 5289
    goto :goto_0

    .line 5296
    :pswitch_1
    if-ltz p6, :cond_1

    const/16 v5, 0x64

    move/from16 v0, p6

    if-lt v0, v5, :cond_0

    .line 5323
    :cond_1
    :goto_2
    return-void

    .line 5322
    .restart local v3       #accountId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5286
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadMessageForViewStatus(JII)V
    .locals 11
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5568
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v9, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5569
    .local v9, result:Lcom/android/emailcommon/mail/MessagingException;
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMessageForViewStatus] [msgId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [exceptionType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [progress - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5573
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    .line 5576
    .local v8, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 5577
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 5580
    .local v0, listener:Lcom/android/email/Controller$Result;
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 5583
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5584
    return-void
.end method

.method public loadMoreStatus(JII)V
    .locals 5
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5485
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5486
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5497
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5498
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5499
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 5501
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5488
    :pswitch_0
    const/16 p4, 0x64

    .line 5489
    goto :goto_0

    .line 5492
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 5502
    :cond_1
    :goto_2
    return-void

    .line 5501
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public modifyUserAccountStatus(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 5843
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[modifyUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5844
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5845
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5846
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->modifyUserAccountCallback(Landroid/os/Bundle;)V

    goto :goto_0

    .line 5848
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5849
    return-void
.end method

.method public moveConvAlwaysStatus([BIII)V
    .locals 0
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5536
    return-void
.end method

.method public moveItemStatus(JI)V
    .locals 0
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5416
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 8
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5421
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 5422
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5434
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 5435
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v2, p1

    move v4, p4

    move-object v5, p5

    .line 5436
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 5438
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5424
    :pswitch_0
    const/16 p4, 0x64

    .line 5425
    goto :goto_0

    .line 5428
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v2, 0x64

    if-lt p4, v2, :cond_0

    .line 5439
    :cond_1
    :goto_2
    return-void

    .line 5438
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshIRMTemplatesStatus(JII)V
    .locals 7
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5507
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5508
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5518
    move p4, p3

    .line 5521
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5522
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5523
    .local v1, listener:Lcom/android/email/Controller$Result;
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 5524
    const-string v3, "IRM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller:refreshIRMTemplatesStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    :cond_1
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 5528
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5510
    :pswitch_0
    const/16 p4, 0x64

    .line 5511
    goto :goto_0

    .line 5513
    :pswitch_1
    if-ltz p4, :cond_2

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 5529
    :cond_2
    :goto_2
    return-void

    .line 5528
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public searchMailboxStatus(JII)V
    .locals 15
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5606
    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5607
    .local v11, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v6, "EVENT@CONTR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[searchMailboxStatus] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [exceptionType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [progress - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[statuscode - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;

    move-result-object v10

    .line 5612
    .local v10, statusString:Ljava/lang/String;
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    .line 5613
    .local v3, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5631
    :cond_0
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_2

    .line 5632
    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid MailboxId - mailboxId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    :cond_1
    :goto_1
    return-void

    .line 5615
    :pswitch_0
    const/16 p4, 0x64

    .line 5616
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 5620
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v6, 0x64

    move/from16 v0, p4

    if-lt v0, v6, :cond_0

    goto :goto_1

    .line 5625
    :pswitch_2
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    goto :goto_1

    .line 5635
    :cond_2
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 5637
    .local v13, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v13, :cond_1

    .line 5639
    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 5640
    .local v4, accountId:J
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v14

    monitor-enter v14

    .line 5641
    :try_start_0
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 5642
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_2

    .line 5645
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5647
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_1

    .line 5613
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 8
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5913
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 5914
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 5915
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_0

    .line 5917
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5918
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 9
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5332
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 5333
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p4, :pswitch_data_0

    .line 5344
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 5345
    .local v2, accountId:J
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 5346
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v4, p1

    move v6, p5

    .line 5347
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    .line 5349
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5335
    .end local v2           #accountId:J
    :pswitch_0
    const/16 p5, 0x64

    .line 5336
    goto :goto_0

    .line 5339
    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    .line 5350
    :cond_1
    :goto_2
    return-void

    .line 5349
    .restart local v2       #accountId:J
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDeviceInfoStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5542
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5353
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5354
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5365
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5366
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5367
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 5369
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5356
    :pswitch_0
    const/16 p4, 0x64

    .line 5357
    goto :goto_0

    .line 5360
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 5370
    :cond_1
    :goto_2
    return-void

    .line 5369
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .locals 11
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5373
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 5374
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 5387
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 5389
    .local v9, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v9, :cond_2

    .line 5411
    .end local v9           #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    return-void

    .line 5376
    :pswitch_0
    const/16 p4, 0x64

    .line 5377
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 5381
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v4, 0x64

    if-lt p4, v4, :cond_0

    goto :goto_1

    .line 5391
    .restart local v9       #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 5404
    .local v2, accountId:J
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 5405
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 5406
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v7, -0x1

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_2

    .line 5408
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateUserProfileStatus(Landroid/os/Bundle;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 5824
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5825
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5826
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5827
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->updateUserProfileCallback(Landroid/os/Bundle;)V

    goto :goto_0

    .line 5829
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5830
    return-void
.end method
