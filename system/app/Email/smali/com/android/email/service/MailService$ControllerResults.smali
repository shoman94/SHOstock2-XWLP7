.class Lcom/android/email/service/MailService$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oofResults"

    .prologue
    .line 1177
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1065
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1188
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1073
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1169
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1155
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 1136
    if-nez p1, :cond_0

    const/16 v2, 0x64

    if-ne p6, v2, :cond_3

    .line 1137
    :cond_0
    if-eqz p1, :cond_1

    .line 1141
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1143
    :cond_1
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1144
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v0}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 1145
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mStartId:I
    invoke-static {v2}, Lcom/android/email/service/MailService;->access$800(Lcom/android/email/service/MailService;)I

    move-result v1

    .line 1146
    .local v1, serviceId:I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2

    .line 1147
    long-to-int v1, p7

    .line 1149
    :cond_2
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 1151
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #serviceId:I
    :cond_3
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 11
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 1081
    if-nez p1, :cond_0

    const/16 v7, 0x64

    move/from16 v0, p6

    if-ne v0, v7, :cond_5

    .line 1084
    :cond_0
    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v8, 0x0

    invoke-static {v7, p2, p3, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 1086
    .local v3, inboxId:J
    cmp-long v7, p4, v3

    if-nez v7, :cond_4

    .line 1087
    const/16 v7, 0x64

    move/from16 v0, p6

    if-ne v0, v7, :cond_6

    .line 1088
    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    move/from16 v0, p7

    invoke-virtual {v7, p2, p3, v0}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1089
    if-lez p7, :cond_1

    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    iget-boolean v7, v7, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    if-nez v7, :cond_1

    .line 1090
    const-string v7, "Email-MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateMailboxCallback notifyNewMessages accountId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #calls: Lcom/android/email/service/MailService;->notifyNewMessages(J)V
    invoke-static {v7, p2, p3}, Lcom/android/email/service/MailService;->access$600(Lcom/android/email/service/MailService;J)V

    .line 1099
    :cond_1
    if-nez p7, :cond_4

    .line 1100
    const/4 v1, 0x0

    .line 1101
    .local v1, accountsWithNewMessages:I
    sget-object v7, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1102
    .local v6, report:Lcom/android/email/service/MailService$AccountSyncReport;
    iget v7, v6, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    if-eqz v7, :cond_2

    .line 1105
    iget v7, v6, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    add-int p7, p7, v7

    .line 1106
    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Acc Id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v6, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    .end local v6           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_3
    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyNewMessages accountId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Total Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    if-nez v1, :cond_4

    .line 1114
    const-string v7, "MailService"

    const-string v8, "Notifcation canceled"

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1116
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_4

    .line 1117
    sget v7, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1125
    .end local v1           #accountsWithNewMessages:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :cond_4
    :goto_1
    invoke-static/range {p4 .. p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 1127
    .end local v3           #inboxId:J
    :cond_5
    return-void

    .line 1121
    .restart local v3       #inboxId:J
    :cond_6
    iget-object v7, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v8, -0x1

    invoke-virtual {v7, p2, p3, v8}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    goto :goto_1
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1131
    return-void
.end method
