.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/LegacyConversions;->ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 28
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 521
    .local v21, localAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 522
    .local v12, contentType:Ljava/lang/String;
    const-string v3, "name"

    invoke-static {v12, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 523
    .local v22, name:Ljava/lang/String;
    if-nez v22, :cond_0

    .line 524
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 525
    .local v11, contentDisposition:Ljava/lang/String;
    const-string v3, "filename"

    invoke-static {v11, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 530
    .end local v11           #contentDisposition:Ljava/lang/String;
    :cond_0
    const-wide/16 v26, 0x0

    .line 532
    .local v26, size:J
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v15

    .line 533
    .local v15, disposition:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 534
    const-string v3, "size"

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 535
    .local v25, s:Ljava/lang/String;
    if-eqz v25, :cond_1

    .line 536
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 540
    .end local v25           #s:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 541
    const/16 v16, 0x0

    .line 542
    .local v16, dispositionType:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 543
    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 547
    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "inline"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    const/16 v20, 0x1

    .line 551
    .local v20, inlineDisposition:Z
    :goto_0
    if-eqz v20, :cond_d

    if-eqz v22, :cond_d

    const/16 v19, 0x1

    .line 553
    .local v19, inline:Z
    :goto_1
    if-eqz v19, :cond_4

    .line 554
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 561
    .end local v16           #dispositionType:Ljava/lang/String;
    .end local v19           #inline:Z
    .end local v20           #inlineDisposition:Z
    :cond_4
    const-string v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 562
    .local v24, partIds:[Ljava/lang/String;
    if-eqz v24, :cond_e

    const/4 v3, 0x0

    aget-object v23, v24, v3

    .line 564
    .local v23, partId:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 565
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 566
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 567
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 568
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 570
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 571
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 576
    const-string v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 577
    .local v17, encoding:[Ljava/lang/String;
    if-eqz v17, :cond_f

    const/4 v3, 0x0

    aget-object v3, v17, v3

    :goto_3
    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 579
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 583
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v5, "message/rfc822"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 584
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoName_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".eml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 601
    :cond_5
    const/4 v10, 0x0

    .line 602
    .local v10, bIsPOP3Account:Z
    if-eqz p3, :cond_6

    .line 603
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v18

    .line 605
    .local v18, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v18, :cond_6

    .line 606
    const-string v3, "pop3"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 610
    .end local v18           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_6
    const/4 v3, 0x1

    if-eq v10, v3, :cond_7

    if-eqz p3, :cond_10

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 612
    :cond_7
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 613
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 615
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 617
    .local v9, attachmentFoundInDb:Z
    :cond_8
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 618
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 619
    .local v14, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v14, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 623
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 625
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 627
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 629
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 633
    const/4 v9, 0x1

    .line 634
    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    .end local v14           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 645
    if-nez v9, :cond_a

    .line 646
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 654
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #attachmentFoundInDb:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_a
    :goto_4
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 656
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 659
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 661
    return-void

    .line 547
    .end local v10           #bIsPOP3Account:Z
    .end local v17           #encoding:[Ljava/lang/String;
    .end local v23           #partId:Ljava/lang/String;
    .end local v24           #partIds:[Ljava/lang/String;
    .restart local v16       #dispositionType:Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 551
    .restart local v20       #inlineDisposition:Z
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 562
    .end local v16           #dispositionType:Ljava/lang/String;
    .end local v20           #inlineDisposition:Z
    .restart local v24       #partIds:[Ljava/lang/String;
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 577
    .restart local v17       #encoding:[Ljava/lang/String;
    .restart local v23       #partId:Ljava/lang/String;
    :cond_f
    const-string v3, "base64"

    goto/16 :goto_3

    .line 641
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v9       #attachmentFoundInDb:Z
    .restart local v10       #bIsPOP3Account:Z
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 649
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #attachmentFoundInDb:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4
.end method

.method private static addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mp"
    .parameter "contentType"
    .parameter "quotedPartTag"
    .parameter "partText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 835
    if-nez p3, :cond_0

    .line 844
    :goto_0
    return-void

    .line 838
    :cond_0
    new-instance v0, Lcom/android/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 840
    .local v1, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    if-eqz p2, :cond_1

    .line 841
    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto :goto_0
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return-object p0

    .line 447
    :cond_0
    if-nez p0, :cond_1

    .line 448
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 451
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 453
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1063
    const-class v2, Lcom/android/email/LegacyConversions;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 1086
    :goto_0
    monitor-exit v2

    return v0

    .line 1081
    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1083
    if-eqz v0, :cond_3

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1086
    goto :goto_0

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 921
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 923
    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 925
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 927
    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 931
    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    .line 933
    :goto_0
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    or-int/lit8 v0, v0, 0x2

    .line 937
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isAddSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    or-int/lit16 v0, v0, 0x2000

    .line 939
    :cond_1
    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 940
    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 942
    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 943
    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1}, Lcom/android/email/Account;->getRingtone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 945
    iget-object v0, p1, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 946
    iput v8, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 947
    iget-wide v0, p1, Lcom/android/email/Account;->mSecurityFlags:J

    iput-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 948
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Lcom/android/email/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 953
    iget-boolean v0, p1, Lcom/android/email/Account;->mIsDefault:Z

    iput-boolean v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 954
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_2

    .line 956
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 957
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    aget-object v1, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x5

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 961
    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 966
    :cond_2
    :try_start_0
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 967
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_2
    :try_start_1
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 974
    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    :goto_3
    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 983
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCbaCertificate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 992
    :cond_3
    :goto_4
    iget-wide v0, p1, Lcom/android/email/Account;->mAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAccountKey(J)V

    .line 993
    iget-wide v0, p1, Lcom/android/email/Account;->mSevenAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSevenAccountKey(J)V

    .line 994
    iget v0, p1, Lcom/android/email/Account;->mTypeMsg:I

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    .line 995
    iget-wide v0, p1, Lcom/android/email/Account;->mTimeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTimeLimit(J)V

    .line 996
    iget-wide v0, p1, Lcom/android/email/Account;->mSizeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSizeLimit(J)V

    .line 1000
    invoke-virtual {p1}, Lcom/android/email/Account;->getMessageFormat()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    .line 1001
    iget v0, p1, Lcom/android/email/Account;->mAccountType:I

    iput v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 1004
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmailSize()B

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 1005
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1006
    invoke-virtual {p1}, Lcom/android/email/Account;->getCalendarSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 1008
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1013
    const-string v2, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v0

    if-ne v0, v7, :cond_5

    move v0, v7

    :goto_5
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1016
    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1018
    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    if-ne v2, v7, :cond_6

    :goto_6
    invoke-static {v1, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1022
    return-object v9

    .line 935
    :cond_4
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_1

    .line 968
    :catch_0
    move-exception v0

    .line 969
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 970
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 975
    :catch_1
    move-exception v0

    .line 976
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 977
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 984
    :catch_2
    move-exception v0

    .line 985
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_5
    move v0, v8

    .line 1013
    goto :goto_5

    :cond_6
    move v7, v8

    .line 1018
    goto :goto_6

    :cond_7
    move v0, v8

    goto/16 :goto_0
.end method

.method static makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;
    .locals 6
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 856
    new-instance v0, Lcom/android/email/Account;

    invoke-direct {v0, p0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 858
    .local v0, result:Lcom/android/email/Account;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncWindow(I)V

    .line 862
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 875
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 876
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 877
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 878
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDeletePolicy(I)V

    .line 880
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/Account;->mUuid:Ljava/lang/String;

    .line 881
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 882
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setRingtone(Ljava/lang/String;)V

    .line 883
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    .line 885
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    iput-wide v4, v0, Lcom/android/email/Account;->mSecurityFlags:J

    .line 887
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 888
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    .line 891
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 897
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setAccountKey(J)V

    .line 898
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSevenAccountKey(J)V

    .line 899
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setTypeMsg(I)V

    .line 900
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setTimeLimit(J)V

    .line 901
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSizeLimit(J)V

    .line 905
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    iput v1, v0, Lcom/android/email/Account;->mMessageFormat:I

    .line 906
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    iput v1, v0, Lcom/android/email/Account;->mAccountType:I

    .line 908
    return-object v0

    :cond_0
    move v1, v3

    .line 875
    goto :goto_0

    :cond_1
    move v1, v3

    .line 876
    goto :goto_1

    :cond_2
    move v1, v3

    .line 877
    goto :goto_2

    :cond_3
    move v2, v3

    .line 887
    goto :goto_3
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;
    .locals 13
    .parameter "context"
    .parameter "localMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 728
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 731
    .local v3, message:Lcom/android/emailcommon/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 732
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 733
    .local v0, from:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 734
    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    .line 736
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 737
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 738
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v3, v10, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 740
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 741
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 744
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 745
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 746
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 747
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    .line 748
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 749
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 755
    const-string v7, "Content-Type"

    const-string v10, "multipart/mixed"

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    new-instance v4, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 757
    .local v4, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 761
    :try_start_0
    const-string v7, "text/html"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_2
    :try_start_1
    const-string v7, "text/plain"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :goto_3
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v8

    .line 775
    .local v2, isReply:Z
    :goto_4
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v8

    .line 783
    .local v1, isForward:Z
    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 785
    :cond_1
    :try_start_2
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 791
    :goto_6
    if-eqz v2, :cond_7

    const-string v5, "quoted-reply"

    .line 793
    .local v5, replyTag:Ljava/lang/String;
    :goto_7
    :try_start_3
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 800
    :goto_8
    :try_start_4
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 821
    .end local v5           #replyTag:Ljava/lang/String;
    :cond_2
    :goto_9
    return-object v3

    .line 731
    .end local v0           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    .end local v4           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0       #from:[Lcom/android/emailcommon/mail/Address;
    :cond_4
    move v7, v9

    .line 738
    goto/16 :goto_1

    .line 763
    .restart local v4       #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v6

    .line 764
    .local v6, rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading html body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 770
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 771
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading text body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_5
    move v2, v9

    .line 774
    goto :goto_4

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v9

    .line 775
    goto :goto_5

    .line 787
    .restart local v1       #isForward:Z
    :catch_2
    move-exception v6

    .line 788
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 791
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_7
    const-string v5, "quoted-forward"

    goto :goto_7

    .line 795
    .restart local v5       #replyTag:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 796
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 802
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v6

    .line 803
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 17
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 684
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 686
    .local v3, attachmentId:J
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 688
    .local v9, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    .line 689
    .local v12, saveIn:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 690
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 692
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v11

    .line 694
    .local v11, saveAs:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 695
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 696
    .local v10, out:Ljava/io/FileOutputStream;
    const-wide/16 v6, 0x0

    .line 697
    .local v6, copySize:J
    if-eqz v9, :cond_1

    .line 699
    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v14

    int-to-long v6, v14

    .line 700
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 702
    :cond_1
    if-eqz v10, :cond_2

    .line 703
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 706
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, contentUriString:Ljava/lang/String;
    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 710
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 713
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v8, cv:Landroid/content/ContentValues;
    const-string v14, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    const-string v14, "contentUri"

    invoke-virtual {v8, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 717
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v8, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 719
    .end local v3           #attachmentId:J
    .end local v5           #contentUriString:Ljava/lang/String;
    .end local v6           #copySize:J
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #saveAs:Ljava/io/File;
    .end local v12           #saveIn:Ljava/io/File;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 668
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 670
    :cond_1
    if-nez p0, :cond_2

    .line 671
    const-string p0, ""

    .line 672
    :cond_2
    if-nez p1, :cond_3

    .line 673
    const-string p1, ""

    .line 674
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 8
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 475
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    .line 476
    .local v1, attachmentPart:Lcom/android/emailcommon/mail/Part;
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, contentType:Ljava/lang/String;
    const-string v7, "name"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 479
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, contentDisposition:Ljava/lang/String;
    const-string v7, "filename"

    invoke-static {v2, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    .end local v2           #contentDisposition:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 485
    .local v5, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 486
    .local v0, attContentType:Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 494
    if-nez v6, :cond_2

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 496
    :cond_2
    invoke-static {p0, p1, v1, p3}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 498
    .end local v0           #attContentType:Ljava/lang/String;
    .end local v1           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    .end local v3           #contentType:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 22
    .parameter "context"
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 319
    .local p3, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 321
    const/4 v12, 0x0

    .line 322
    .local v12, sbHtml:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 323
    .local v15, sbText:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 324
    .local v13, sbHtmlReply:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 325
    .local v16, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 327
    .local v14, sbIntroText:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 329
    .local v11, sbCalendar:Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Part;

    .line 330
    .local v18, viewable:Lcom/android/emailcommon/mail/Part;
    const/16 v17, 0x0

    .line 331
    .local v17, text:Ljava/lang/String;
    const-string v19, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v18 .. v19}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, replyTags:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 333
    .local v9, replyTag:Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 334
    const/16 v19, 0x0

    aget-object v9, v10, v19

    .line 338
    :cond_0
    const-string v19, "text/html"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 339
    .local v5, isHtml:Z
    const-string v19, "text/calendar"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 342
    .local v4, isCalendar:Z
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v17

    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/high16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 345
    if-eqz v5, :cond_3

    .line 346
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 353
    :cond_1
    :goto_1
    if-eqz v9, :cond_7

    .line 354
    const-string v19, "quoted-reply"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 355
    .local v8, isQuotedReply:Z
    const-string v19, "quoted-forward"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 356
    .local v6, isQuotedForward:Z
    const-string v19, "quoted-intro"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 357
    .local v7, isQuotedIntro:Z
    if-nez v8, :cond_2

    if-eqz v6, :cond_6

    .line 358
    :cond_2
    if-eqz v5, :cond_4

    .line 359
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 364
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 365
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    if-eqz v8, :cond_5

    const/16 v19, 0x1

    :goto_3
    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 348
    .end local v6           #isQuotedForward:Z
    .end local v7           #isQuotedIntro:Z
    .end local v8           #isQuotedReply:Z
    :cond_3
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_1

    .line 361
    .restart local v6       #isQuotedForward:Z
    .restart local v7       #isQuotedIntro:Z
    .restart local v8       #isQuotedReply:Z
    :cond_4
    invoke-static/range {v16 .. v17}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    goto :goto_2

    .line 365
    :cond_5
    const/16 v19, 0x2

    goto :goto_3

    .line 369
    :cond_6
    if-eqz v7, :cond_7

    .line 370
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 371
    goto/16 :goto_0

    .line 375
    .end local v6           #isQuotedForward:Z
    .end local v7           #isQuotedIntro:Z
    .end local v8           #isQuotedReply:Z
    :cond_7
    if-eqz v5, :cond_8

    .line 376
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_0

    .line 377
    :cond_8
    if-eqz v4, :cond_9

    .line 378
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    .line 380
    :cond_9
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    goto/16 :goto_0

    .line 390
    .end local v4           #isCalendar:Z
    .end local v5           #isHtml:Z
    .end local v9           #replyTag:Ljava/lang/String;
    .end local v10           #replyTags:[Ljava/lang/String;
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 391
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 392
    .restart local v17       #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 393
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 394
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 397
    .end local v17           #text:Ljava/lang/String;
    :cond_b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 398
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 399
    .restart local v17       #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 400
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 412
    .end local v17           #text:Ljava/lang/String;
    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_d

    .line 413
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 422
    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_e

    .line 423
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 425
    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_f

    .line 426
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 435
    :cond_f
    const/16 v19, 0x1

    return v19

    .line 350
    .restart local v4       #isCalendar:Z
    .restart local v5       #isHtml:Z
    .restart local v9       #replyTag:Ljava/lang/String;
    .restart local v10       #replyTags:[Ljava/lang/String;
    .restart local v17       #text:Ljava/lang/String;
    .restart local v18       #viewable:Lcom/android/emailcommon/mail/Part;
    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method

.method public static updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z
    .locals 22
    .parameter "context"
    .parameter "localMessage"
    .parameter "message"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v9

    .line 123
    .local v9, from:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    .line 124
    .local v18, to:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    .line 125
    .local v8, cc:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    .line 126
    .local v7, bcc:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReadReceiptTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    .line 127
    .local v12, readReceiptTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v14

    .line 128
    .local v14, replyTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, subject:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v10

    .line 130
    .local v10, internalDate:Ljava/util/Date;
    const/4 v13, 0x0

    .line 131
    .local v13, receiveDate:Ljava/util/Date;
    const-wide/16 v5, 0x0

    .line 132
    .local v5, aTimeStampaa:J
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v15

    .line 134
    .local v15, sentDate:Ljava/util/Date;
    if-eqz v15, :cond_c

    .line 136
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 146
    :cond_0
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-eqz v19, :cond_e

    .line 147
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 152
    :goto_1
    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 156
    :cond_1
    const-string v19, " "

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 168
    :goto_2
    if-eqz v15, :cond_2

    .line 169
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 171
    :cond_2
    if-eqz v16, :cond_11

    .line 172
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 177
    :goto_3
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 178
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 182
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 185
    if-eqz v10, :cond_3

    .line 186
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    :cond_3
    move-object/from16 v19, p2

    .line 193
    check-cast v19, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, messageId:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 195
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 199
    :cond_4
    move-wide/from16 v0, p5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 200
    move-wide/from16 v0, p3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 202
    if-eqz v9, :cond_5

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 203
    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 206
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 207
    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 208
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 209
    invoke-static {v14}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 212
    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 214
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 216
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName for outbox, sentbox, draft"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 224
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const-string v19, ""

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 225
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 263
    :cond_9
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getImportance()Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, tempHeader:Ljava/lang/String;
    const-string v19, "high"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "High"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 266
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 277
    :goto_5
    invoke-static {v12}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, ReceiptTo:Ljava/lang/String;
    if-eqz v4, :cond_b

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 280
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 309
    :cond_b
    const/16 v19, 0x1

    return v19

    .line 138
    .end local v4           #ReceiptTo:Ljava/lang/String;
    .end local v11           #messageId:Ljava/lang/String;
    .end local v17           #tempHeader:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v13

    .line 139
    if-eqz v10, :cond_d

    .line 140
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_0

    .line 141
    :cond_d
    if-eqz v13, :cond_0

    .line 142
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_0

    .line 149
    :cond_e
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mTimeStamp = null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    :cond_f
    if-eqz v9, :cond_10

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 160
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/util/EmailAddressCacheProcessor;->addFromAddressToCache(Ljava/lang/String;)V

    .line 162
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 164
    :cond_10
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 174
    :cond_11
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mSubject == null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 230
    .restart local v11       #messageId:Ljava/lang/String;
    :cond_12
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 231
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_4

    .line 232
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 236
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_4

    .line 267
    .restart local v17       #tempHeader:Ljava/lang/String;
    :cond_14
    const-string v19, "low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    const-string v19, "Low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 268
    :cond_15
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_5

    .line 270
    :cond_16
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_5
.end method
