.class public Lcom/android/emailcommon/internet/MimeMultipart;
.super Lcom/android/emailcommon/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected mBoundary:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mPreamble:Ljava/lang/String;

.field protected mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Multipart;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 56
    const-string v0, "mixed"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Multipart;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 64
    const-string v1, "boundary"

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiPart does not contain boundary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MultiPart Content-Type; must contain subtype and boundary. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 188
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 189
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 190
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 192
    :cond_0
    return-void
.end method

.method private writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 14
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 205
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 207
    .local v5, ff:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 208
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, encFileName:Ljava/lang/String;
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 216
    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename*=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v4           #encFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v10, "Content-ID"

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v10, "\r\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, inStream:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 241
    .local v1, base64Out:Landroid/util/Base64OutputStream;
    :try_start_0
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v10, :cond_5

    .line 242
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v7           #inStream:Ljava/io/InputStream;
    .local v8, inStream:Ljava/io/InputStream;
    move-object v7, v8

    .line 251
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local v7       #inStream:Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/Writer;->flush()V

    .line 252
    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v10, 0x14

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 256
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .local v2, base64Out:Landroid/util/Base64OutputStream;
    :try_start_1
    invoke-static {v7, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 262
    const/16 v10, 0xd

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 263
    const/16 v10, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 272
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    .line 274
    :cond_2
    if-eqz v7, :cond_a

    .line 275
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v1, v2

    .line 277
    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :cond_3
    :goto_2
    return-void

    .line 220
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .end local v7           #inStream:Ljava/io/InputStream;
    :cond_4
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 227
    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    .restart local v7       #inStream:Ljava/io/InputStream;
    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 246
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 247
    .local v6, fileUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto/16 :goto_1

    .line 265
    .end local v6           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/NullPointerException;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    if-eqz v1, :cond_6

    .line 273
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 274
    :cond_6
    if-eqz v7, :cond_3

    .line 275
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 267
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v10

    .line 272
    :goto_4
    if-eqz v1, :cond_7

    .line 273
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 274
    :cond_7
    if-eqz v7, :cond_3

    .line 275
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 269
    :catch_2
    move-exception v9

    .line 270
    .local v9, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_4
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Invalid attachment."

    invoke-direct {v10, v11, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    .end local v9           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v1, :cond_8

    .line 273
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 274
    :cond_8
    if-eqz v7, :cond_9

    .line 275
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v10

    .line 272
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v2       #base64Out:Landroid/util/Base64OutputStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_6

    .line 269
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v2       #base64Out:Landroid/util/Base64OutputStream;
    :catch_3
    move-exception v9

    move-object v1, v2

    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_5

    .line 267
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v2       #base64Out:Landroid/util/Base64OutputStream;
    :catch_4
    move-exception v10

    move-object v1, v2

    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_4

    .line 265
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v2       #base64Out:Landroid/util/Base64OutputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_3

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v2       #base64Out:Landroid/util/Base64OutputStream;
    :cond_a
    move-object v1, v2

    .end local v2           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubTypeForTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 4
    .parameter "subType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 99
    const-string v0, "multipart/%s; boundary=\"%s\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v6, p4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 127
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 129
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/BodyPart;

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 138
    invoke-virtual {v0, p4}, Lcom/android/emailcommon/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 140
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 150
    if-lez v0, :cond_3

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 159
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 161
    invoke-direct {p0, p1, v7, v6, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 163
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 169
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 175
    return-void

    .line 169
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 105
    .local v3, writer:Ljava/io/BufferedWriter;
    iget-object v4, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 110
    iget-object v4, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/BodyPart;

    .line 111
    .local v0, bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 114
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 119
    return-void
.end method
