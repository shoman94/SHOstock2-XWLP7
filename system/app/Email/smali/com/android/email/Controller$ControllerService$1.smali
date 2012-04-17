.class Lcom/android/email/Controller$ControllerService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller$ControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller$ControllerService;


# direct methods
.method constructor <init>(Lcom/android/email/Controller$ControllerService;)V
    .locals 0
    .parameter

    .prologue
    .line 6047
    iput-object p1, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 0
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 6060
    return-void
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6056
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeSmsSettings(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6199
    return-void
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6146
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6166
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6150
    const/4 v0, 0x0

    return v0
.end method

.method public emptyTrash(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6171
    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .locals 0
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6183
    return-void
.end method

.method public getAliasFromMap(J)Ljava/lang/String;
    .locals 1
    .parameter "tId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6205
    const/4 v0, 0x1

    return v0
.end method

.method public hostChanged(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6125
    return-void
.end method

.method public loadAttachment(JZ)V
    .locals 13
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6070
    iget-object v0, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    .line 6072
    .local v10, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v10, :cond_1

    .line 6073
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6074
    const-string v0, "Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6076
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 6078
    .local v12, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_3

    .line 6084
    iget v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6085
    iget-object v0, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/Controller;->access$1200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 6090
    .local v11, cols:[Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 6091
    iget-object v0, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 6093
    if-nez v12, :cond_2

    .line 6119
    .end local v11           #cols:[Ljava/lang/String;
    .end local v12           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :goto_0
    return-void

    .line 6109
    .restart local v12       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v3, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v7, p1

    move/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/adapter/ProtocolAdapter;->loadAttachment(JJJJZ)V

    goto :goto_0

    .line 6115
    :cond_3
    invoke-static {}, Lcom/android/email/Controller;->access$1300()Lcom/android/email/Controller;

    move-result-object v0

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v0}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    goto :goto_0
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6142
    return-void
.end method

.method public loadMoreCancel()V
    .locals 0

    .prologue
    .line 6209
    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 0
    .parameter "mailboxId"
    .parameter "toMailboxId"
    .parameter "conversationId"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6189
    return-void
.end method

.method public moveMessage(JJ)V
    .locals 0
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6163
    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6218
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6155
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "accId"
    .parameter "mailboxId"
    .parameter "foldId"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6239
    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 0
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6138
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6131
    return-void
.end method

.method public sendMessageCancel([JJJ)V
    .locals 0
    .parameter "messageIds"
    .parameter "outboxId"
    .parameter "accountId"

    .prologue
    .line 6212
    return-void
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6177
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6159
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6160
    return-void
.end method

.method public setDeviceInfo(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6194
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6128
    return-void
.end method

.method public startSync(JZ)V
    .locals 0
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6063
    return-void
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6066
    return-void
.end method

.method public updateFolderList(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6122
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .locals 1
    .parameter "protocol"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6051
    const/4 v0, 0x0

    return-object v0
.end method
