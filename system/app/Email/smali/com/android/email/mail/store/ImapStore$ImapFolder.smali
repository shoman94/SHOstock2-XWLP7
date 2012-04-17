.class Lcom/android/email/mail/store/ImapStore$ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapFolder"
.end annotation


# instance fields
.field protected mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

.field private mDelimiter:I

.field protected mExists:Z

.field protected mMessageCount:I

.field protected mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field protected mName:Ljava/lang/String;

.field private mSelect:Z

.field protected final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .parameter "store"
    .parameter "name"

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    .line 747
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    .line 748
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 749
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1898
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1899
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :cond_0
    return-void
.end method

.method private decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .locals 11
    .parameter "in"
    .parameter "contentTransferEncoding"
    .parameter "size"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1495
    invoke-static {p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1496
    new-instance v7, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 1497
    .local v7, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 1499
    .local v4, out:Ljava/io/OutputStream;
    const/16 v9, 0x4000

    :try_start_0
    new-array v1, v9, [B

    .line 1500
    .local v1, buffer:[B
    const/4 v3, 0x0

    .line 1501
    .local v3, n:I
    const/4 v2, 0x0

    .line 1502
    .local v2, count:I
    const/4 v5, 0x0

    .line 1503
    .local v5, progress:I
    const/4 v6, 0x0

    .line 1504
    .local v6, temp:I
    :cond_0
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v9, v3, :cond_3

    .line 1505
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1506
    add-int/2addr v2, v3

    .line 1508
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1509
    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1510
    const-string v9, "Email:ImapStore"

    const-string v10, "Attachmentdownload is cancelled in decodeBody"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance v9, Ljava/io/IOException;

    const-string v10, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v3           #n:I
    .end local v5           #progress:I
    .end local v6           #temp:I
    :catch_0
    move-exception v0

    .line 1537
    .local v0, bde:Ljava/lang/Exception;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1538
    .local v8, warning:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1542
    .end local v0           #bde:Ljava/lang/Exception;
    .end local v8           #warning:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1517
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #n:I
    .restart local v5       #progress:I
    .restart local v6       #temp:I
    :cond_1
    if-eqz p4, :cond_0

    .line 1519
    mul-int/lit8 v9, v2, 0x64

    :try_start_2
    div-int v6, v9, p3

    .line 1521
    if-eq v6, v5, :cond_0

    .line 1522
    move v5, v6

    .line 1523
    sget-object v9, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p4, v5, v9}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1540
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v3           #n:I
    .end local v5           #progress:I
    .end local v6           #temp:I
    :catchall_0
    move-exception v9

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v9

    .line 1528
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #n:I
    .restart local v5       #progress:I
    .restart local v6       #temp:I
    :cond_2
    if-eqz p4, :cond_0

    .line 1529
    mul-int/lit8 v9, v2, 0x64

    :try_start_3
    div-int/2addr v9, p3

    sget-object v10, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->BASE:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p4, v9, v10}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1540
    :cond_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1569
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1572
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1557
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1558
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 1560
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_0
    return-void
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .locals 24
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1576
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1580
    new-instance v16, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 1581
    .local v16, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 1582
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v12

    .line 1583
    .local v12, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1588
    new-instance v7, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 1589
    .local v7, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1590
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    .line 1595
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 1581
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 1598
    .end local v7           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_1
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1599
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1604
    .end local v12           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1757
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v16           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :goto_2
    return-void

    .line 1615
    :cond_3
    const/4 v3, 0x0

    .line 1616
    .local v3, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v19

    .line 1617
    .local v19, type:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v18

    .line 1618
    .local v18, subType:Lcom/android/email/mail/store/imap/ImapString;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1621
    .local v15, mimeType:Ljava/lang/String;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 1622
    .local v6, bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    .line 1623
    .local v8, cid:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    .line 1624
    .local v13, encoding:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    .line 1652
    .local v17, size:I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v10, contentType:Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    .restart local v14       #i:I
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_3
    if-ge v14, v11, :cond_4

    .line 1665
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    .line 1670
    :cond_4
    const-string v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1681
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1689
    .end local v10           #contentType:Ljava/lang/StringBuilder;
    .end local v11           #count:I
    .end local v14           #i:I
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    .local v9, contentDisposition:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_7

    .line 1692
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1694
    .local v4, bodyDisposition0Str:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1695
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    .line 1699
    .local v5, bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1704
    const/4 v14, 0x1

    .restart local v14       #i:I
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_5
    if-ge v14, v11, :cond_7

    .line 1707
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 1683
    .end local v4           #bodyDisposition0Str:Ljava/lang/String;
    .end local v5           #bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    .end local v9           #contentDisposition:Ljava/lang/StringBuilder;
    .restart local v10       #contentType:Ljava/lang/StringBuilder;
    :cond_6
    const/16 v20, 0x8

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_4

    .line 1685
    .end local v10           #contentType:Ljava/lang/StringBuilder;
    .end local v11           #count:I
    .end local v14           #i:I
    :catch_0
    move-exception v12

    .line 1686
    .local v12, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v20, "Z7App"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!! IndexOutOfBoundsException !! bs.getsize "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1715
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #contentDisposition:Ljava/lang/StringBuilder;
    :cond_7
    if-lez v17, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    .line 1717
    const-string v20, ";\n size=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 1725
    const-string v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    :cond_9
    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    .line 1734
    const-string v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_a
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1742
    const-string v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :cond_b
    if-lez v17, :cond_c

    .line 1746
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v20, p1

    .line 1747
    check-cast v20, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1754
    :cond_c
    :goto_6
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1748
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v20, p1

    .line 1749
    check-cast v20, Lcom/android/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    .line 1751
    :cond_e
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x0

    .line 1766
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1768
    :try_start_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_9

    aget-object v5, p1, v3

    .line 1770
    new-instance v6, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v6}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 1771
    new-instance v0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v0, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1772
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1773
    invoke-virtual {v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1775
    const-string v0, ""

    .line 1776
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    .line 1777
    array-length v1, v7

    if-lez v1, :cond_3

    .line 1778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1779
    array-length v9, v7

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_2

    .line 1780
    aget-object v10, v7, v1

    .line 1781
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_1

    .line 1782
    const-string v10, " \\SEEN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1783
    :cond_1
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_0

    .line 1784
    const-string v10, " \\FLAGGED"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1842
    :catch_0
    move-exception v0

    .line 1843
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1845
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    .line 1787
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1788
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1792
    :cond_3
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "APPEND \"%s\" (%s) {%d}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1797
    :cond_4
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 1798
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1799
    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1801
    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1802
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1803
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1804
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1808
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-lt v1, v12, :cond_8

    const/4 v1, 0x0

    const-string v6, "APPENDUID"

    invoke-virtual {v0, v1, v6}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1819
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1820
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1821
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1768
    :cond_6
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 1805
    :cond_7
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1806
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    .line 1832
    :cond_8
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1836
    const-string v1, "(HEADER MESSAGE-ID %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1838
    array-length v1, v0

    if-lez v1, :cond_6

    .line 1839
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1845
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1847
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"

    .prologue
    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 892
    monitor-enter p0

    .line 893
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 894
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 896
    monitor-exit p0

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close(ZZ)V
    .locals 2
    .parameter "expunge"
    .parameter "forceClose"

    .prologue
    .line 874
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 875
    monitor-enter p0

    .line 876
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 877
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    .line 878
    if-eqz p2, :cond_1

    .line 879
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 884
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 885
    monitor-exit p0

    .line 886
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1905
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1906
    const-string v0, "Email:ImapStore"

    const-string v1, "Connection Exception detected: "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1909
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 1910
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-ne p1, v0, :cond_1

    .line 1911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 1915
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 7
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1043
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "UID COPY %s \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v6, v6, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1051
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 976
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    .line 977
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 981
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :try_start_1
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 994
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    .line 996
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 979
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 987
    :catch_0
    move-exception v2

    .line 994
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 996
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 990
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 991
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 994
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 996
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1934
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .locals 10
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    .line 1093
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1097
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :try_start_1
    const-string v5, "DELETE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1107
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    .line 1109
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 1095
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1102
    :catch_0
    move-exception v2

    .line 1107
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 1109
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1104
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 1105
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1107
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 1109
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method protected destroyResponses()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 756
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1926
    instance-of v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_0

    .line 1927
    check-cast p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1929
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 922
    iget-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v5, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v3

    .line 931
    :cond_1
    const/4 v0, 0x0

    .line 932
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_2

    .line 934
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 938
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :try_start_1
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 943
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    .line 955
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    .line 936
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_1

    .line 938
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 946
    :catch_0
    move-exception v2

    .line 953
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    .line 955
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v3, v4

    goto :goto_0

    .line 949
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 950
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 953
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_4

    .line 955
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_4
    throw v3
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1853
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1859
    const/4 v0, 0x0

    return-object v0

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1857
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 4
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1250
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    return-void

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 1256
    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 38
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1279
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1283
    :cond_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 1284
    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 1285
    const-string v32, "Email"

    const-string v33, "Attachmentdownload is cancelled in fetchInternal "

    invoke-static/range {v32 .. v33}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1291
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1292
    .local v25, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v4, p1

    .local v4, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v23, v4, v18

    .line 1293
    .local v23, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v23 .. v23}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1306
    .end local v23           #m:Lcom/android/emailcommon/mail/Message;
    :cond_2
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1308
    .local v12, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1309
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1310
    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_3
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 1313
    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1314
    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    const-string v32, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id disposition-notification-to)]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1317
    :cond_4
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1318
    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v14

    .line 1322
    .local v14, fetchPart:Lcom/android/emailcommon/mail/Part;
    if-eqz v14, :cond_b

    .line 1323
    const-string v32, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1325
    .local v27, partIds:[Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 1326
    .local v29, sbuf:Ljava/lang/StringBuffer;
    if-eqz v27, :cond_6

    .line 1327
    const-string v32, "BODY.PEEK"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v27, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    :cond_6
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 1333
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    if-nez v32, :cond_a

    .line 1334
    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_PART_SANE:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    :cond_7
    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1364
    .end local v27           #partIds:[Ljava/lang/String;
    .end local v29           #sbuf:Ljava/lang/StringBuffer;
    :cond_8
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    const-string v33, "UID FETCH %s (%s)"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v36

    const/16 v37, 0x20

    invoke-static/range {v36 .. v37}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    const/16 v26, 0x0

    .line 1371
    .local v26, messageNumber:I
    :cond_9
    const/16 v28, 0x0

    .line 1373
    .local v28, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v28

    .line 1379
    :goto_4
    const/16 v32, 0x1

    const-string v33, "FETCH"

    move-object/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v32

    if-nez v32, :cond_11

    .line 1480
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1482
    :goto_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v32

    if-eqz v32, :cond_9

    goto/16 :goto_0

    .line 1336
    .end local v26           #messageNumber:I
    .end local v28           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v27       #partIds:[Ljava/lang/String;
    .restart local v29       #sbuf:Ljava/lang/StringBuffer;
    :cond_a
    const-string v32, "<0.%d>"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1340
    .end local v27           #partIds:[Ljava/lang/String;
    .end local v29           #sbuf:Ljava/lang/StringBuffer;
    :cond_b
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 1341
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 1342
    sget-boolean v32, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v32, :cond_c

    .line 1343
    const-string v32, "Email"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ImapStore : fetchInternal, retrieveSize = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :cond_c
    if-gez p4, :cond_d

    .line 1347
    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1349
    :cond_d
    new-instance v3, Ljava/lang/String;

    const-string v32, "BODY.PEEK[]<0.%d>"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v3, FetchFieldBodyPeekSane:Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1357
    .end local v3           #FetchFieldBodyPeekSane:Ljava/lang/String;
    :cond_e
    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1359
    :cond_f
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1360
    const-string v32, "BODY.PEEK[]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1376
    .restart local v26       #messageNumber:I
    .restart local v28       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v28

    goto/16 :goto_4

    .line 1382
    :cond_11
    const/16 v32, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v13

    .line 1383
    .local v13, fetchList:Lcom/android/email/mail/store/imap/ImapList;
    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v31

    .line 1385
    .local v31, uid:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    if-eqz v32, :cond_12

    .line 1480
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 1483
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v26           #messageNumber:I
    .end local v28           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v31           #uid:Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 1484
    .local v21, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v32

    throw v32

    .line 1388
    .end local v21           #ioe:Ljava/io/IOException;
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v26       #messageNumber:I
    .restart local v28       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v31       #uid:Ljava/lang/String;
    :cond_12
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1389
    .local v24, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-nez v24, :cond_13

    .line 1480
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .line 1392
    :cond_13
    :try_start_7
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1393
    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v16

    .line 1395
    .local v16, flags:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v10

    .local v10, count:I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_18

    .line 1396
    invoke-virtual/range {v16 .. v17}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v15

    .line 1397
    .local v15, flag:Lcom/android/email/mail/store/imap/ImapString;
    const-string v32, "\\DELETED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 1398
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1395
    :cond_14
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1399
    :cond_15
    const-string v32, "\\ANSWERED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 1400
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 1480
    .end local v10           #count:I
    .end local v13           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v17           #i:I
    .end local v24           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v31           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v32

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v32
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1401
    .restart local v10       #count:I
    .restart local v13       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v15       #flag:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v16       #flags:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v17       #i:I
    .restart local v24       #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v31       #uid:Ljava/lang/String;
    :cond_16
    :try_start_9
    const-string v32, "\\SEEN"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 1402
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_7

    .line 1403
    :cond_17
    const-string v32, "\\FLAGGED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 1404
    sget-object v32, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_7

    .line 1408
    .end local v10           #count:I
    .end local v15           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v16           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v17           #i:I
    :cond_18
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 1409
    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v20

    .line 1411
    .local v20, internalDate:Ljava/util/Date;
    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v30

    .line 1417
    .local v30, size:I
    const-string v32, "BODY[HEADER"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v19

    .line 1420
    .local v19, inHeader:Ljava/io/InputStream;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 1421
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1424
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1427
    .end local v19           #inHeader:Ljava/io/InputStream;
    .end local v20           #internalDate:Ljava/util/Date;
    .end local v30           #size:I
    :cond_19
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 1428
    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v7

    .line 1430
    .local v7, bs:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v32

    if-nez v32, :cond_1a

    .line 1432
    :try_start_a
    const-string v32, "TEXT"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-static {v7, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    .line 1441
    .end local v7           #bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_1a
    :goto_8
    :try_start_b
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1b

    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 1448
    :cond_1b
    const-string v32, "BODY["

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 1449
    .local v5, body:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1450
    .local v6, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1452
    .end local v5           #body:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #bodyStream:Ljava/io/InputStream;
    :cond_1c
    if-eqz v14, :cond_1d

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    if-lez v32, :cond_1d

    .line 1453
    const-string v32, "BODY["

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v6

    .line 1456
    .restart local v6       #bodyStream:Ljava/io/InputStream;
    :try_start_c
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 1457
    .local v9, contentType:Ljava/lang/String;
    const-string v32, "Content-Transfer-Encoding"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v8, v32, v33

    .line 1467
    .local v8, contentTransferEncoding:Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v8, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1476
    .end local v6           #bodyStream:Ljava/io/InputStream;
    .end local v8           #contentTransferEncoding:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    :cond_1d
    :goto_9
    if-eqz p3, :cond_1e

    .line 1477
    :try_start_d
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1480
    :cond_1e
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_5

    .line 1433
    .restart local v7       #bs:Lcom/android/email/mail/store/imap/ImapList;
    :catch_1
    move-exception v11

    .line 1437
    .local v11, e:Lcom/android/emailcommon/mail/MessagingException;
    const/16 v32, 0x0

    :try_start_f
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    goto :goto_8

    .line 1469
    .end local v7           #bs:Lcom/android/email/mail/store/imap/ImapList;
    .end local v11           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v6       #bodyStream:Ljava/io/InputStream;
    :catch_2
    move-exception v11

    .line 1473
    .local v11, e:Ljava/lang/Exception;
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 4
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1263
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1264
    const-string v1, "Email"

    const-string v2, "ImapStore : fetchWithRetrieveSize function is called"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 1273
    :cond_1
    throw v0
.end method

.method public getDelimiter()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    return v0
.end method

.method public getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 2

    .prologue
    .line 916
    const-string v0, "Email:ImapStore"

    const-string v1, "IMAPStore::getMailBoxSynchronizer "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMailBoxSynchronizer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1187
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1191
    :goto_1
    return-object v2

    .line 1186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1197
    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    .line 1198
    :cond_0
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_1
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1208
    if-ge p1, v4, :cond_0

    .line 1209
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid message set %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_0
    const-string v0, "%d:*%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1226
    if-nez p1, :cond_0

    .line 1227
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1229
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 5
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 1236
    aget-object v3, p1, v0

    .line 1237
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1238
    .local v1, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    if-eqz p2, :cond_0

    .line 1240
    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 1235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v1           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-static {}, Lcom/android/email/mail/store/ImapStore;->access$100()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1062
    const/4 v4, 0x0

    .line 1063
    .local v4, unreadMessageCount:I
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1067
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1068
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1069
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1077
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return v4

    .line 1074
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 1075
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v5, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 1
    .parameter "connection"
    .parameter "ioe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1920
    invoke-static {p2}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 13
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 762
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 763
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, p1}, Lcom/android/emailcommon/mail/Folder$OpenMode;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    .line 770
    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    const v8, 0xea60

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 772
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 778
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 849
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v2

    .line 776
    .local v2, ioe:Ljava/io/IOException;
    :try_start_3
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 778
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 785
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 786
    :try_start_5
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 787
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 799
    :try_start_6
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 807
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 809
    const/4 v3, -0x1

    .line 810
    .local v3, messageCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 811
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 812
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v3

    goto :goto_2

    .line 778
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catchall_0
    move-exception v7

    :try_start_7
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    .line 838
    :catch_1
    move-exception v0

    .line 841
    .local v0, e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 842
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 843
    throw v0

    .line 782
    .end local v0           #e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :cond_2
    const/4 v7, 0x0

    :try_start_8
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 844
    :catch_2
    move-exception v0

    .line 845
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    .line 846
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 847
    throw v0

    .line 787
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v7

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v7
    :try_end_a
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_2

    .line 814
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_3
    :try_start_b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 815
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 816
    .local v5, responseCode:Lcom/android/email/mail/store/imap/ImapString;
    const-string v7, "READ-ONLY"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 817
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    .line 833
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_3
    move-exception v2

    .line 834
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_c
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 836
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v7

    :try_start_d
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_d
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2

    .line 818
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v5       #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_4
    :try_start_e
    const-string v7, "READ-WRITE"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 819
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_2

    .line 821
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    :cond_5
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 822
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 827
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_6
    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    .line 828
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 830
    :cond_7
    iput v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 831
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 836
    :try_start_f
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_f
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 11
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 1011
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    .line 1012
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1016
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :try_start_1
    const-string v5, "RENAME %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1022
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    .line 1033
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 1014
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1024
    :catch_0
    move-exception v2

    .line 1031
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 1033
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1027
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 1028
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1031
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 1033
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1119
    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1127
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1129
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1133
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1134
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 1135
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1136
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :goto_1
    return-object v8

    .line 1123
    :catch_1
    move-exception v3

    .line 1124
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1142
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 1140
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_1
.end method

.method searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1151
    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH CHARSET UTF-8 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1159
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1161
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1165
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1166
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 1167
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1168
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    const/16 v8, 0x3e8

    if-gt v1, v8, :cond_0

    .line 1165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :goto_1
    return-object v8

    .line 1155
    :catch_1
    move-exception v3

    .line 1156
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1177
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 1175
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1177
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_1
.end method

.method public setDelimiter(I)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 863
    iput p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    .line 864
    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1865
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1867
    const-string v0, ""

    .line 1868
    array-length v2, p2

    if-lez v2, :cond_6

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1870
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    .line 1871
    aget-object v1, p2, v0

    .line 1872
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1

    .line 1873
    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2

    .line 1875
    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1876
    :cond_2
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3

    .line 1877
    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1878
    :cond_3
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_0

    .line 1880
    const-string v1, " \\ANSWERED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1883
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1886
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v3, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_5

    const-string v0, "+"

    :goto_3
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1895
    return-void

    .line 1886
    :cond_5
    :try_start_1
    const-string v0, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1893
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method public setSelect(Z)V
    .locals 0
    .parameter "select"

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    .line 907
    return-void
.end method
