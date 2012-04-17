.class Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;
.super Lcom/android/email/mail/store/ImapStore$ImapFolder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapFolderIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "store"
    .parameter "name"

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1945
    invoke-direct {p0, p2, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 1946
    return-void
.end method


# virtual methods
.method public startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V
    .locals 10
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1950
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startIdling | Cap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    const-string v8, "IDLE"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->isCapabilitySupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1954
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v7, :cond_0

    .line 1957
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 1960
    :cond_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1961
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    const v8, 0xdbba0

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1966
    :cond_1
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1969
    const/4 v2, 0x0

    .line 1971
    .local v2, expungeReceived:Z
    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1972
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .line 1977
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1978
    const/4 v7, 0x1

    const-string v8, "EXPUNGE"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1981
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXPUNGE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v2, 0x1

    .line 2017
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    .line 2034
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    .line 2037
    const-string v7, "Email:ImapStore"

    const-string v8, "Got response for IDLE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :goto_2
    return-void

    .line 1974
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_0

    .line 1983
    :cond_5
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1984
    if-eqz v2, :cond_6

    .line 1985
    const/4 v2, 0x0

    .line 1986
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXISTS after EXPUNGE "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageDeleted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2019
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v5

    .line 2020
    .local v5, ste:Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 2022
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/16 v8, 0x55

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2034
    .end local v5           #ste:Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    throw v7

    .line 1989
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_6
    :try_start_3
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXISTS"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageReceived()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2024
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_1
    move-exception v3

    .line 2025
    .local v3, ioe:Ljava/io/IOException;
    :try_start_4
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2027
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1992
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_7
    const/4 v7, 0x1

    :try_start_5
    const-string v8, "FETCH"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1993
    const-string v7, "Email:ImapStore"

    const-string v8, "Got FETCH"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 2028
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_2
    move-exception v1

    .line 2029
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2031
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/16 v8, 0x26

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1995
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_8
    :try_start_7
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1996
    const-string v7, "Email:ImapStore"

    const-string v8, "Got continuation request"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1998
    :cond_9
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO - Unexpected response - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2004
    :cond_a
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2005
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2006
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2007
    .local v6, toString:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2034
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_2

    .end local v0           #alert:Ljava/lang/String;
    .end local v6           #toString:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_2

    .line 2039
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_c
    const-string v7, "Email:ImapStore"

    const-string v8, "IDLE not supported but required"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x18

    const-string v9, "IDLE not supported but required"

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public stopIdling()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2055
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v3, "DONE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendContinuationCommand(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v1

    .line 2060
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "Email:ImapStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2062
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v2, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2

    .line 2063
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2064
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Email:ImapStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
