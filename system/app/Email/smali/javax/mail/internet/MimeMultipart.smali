.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field private mark:J

.field protected parsed:Z

.field private position:J

.field private preamble:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 508
    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 104
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 106
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 508
    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 118
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 123
    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 131
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    goto :goto_0
.end method

.method private setPosition(Ljavax/mail/internet/SharedInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 510
    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 511
    return-void
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 572
    if-nez p0, :cond_1

    .line 574
    const/4 v0, 0x0

    .line 582
    :cond_0
    :goto_0
    return-object v0

    .line 576
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 578
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 580
    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 172
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 156
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPosition()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    return-wide v0
.end method

.method mark(Ljava/io/InputStream;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 523
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 525
    return-void
.end method

.method protected parse()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 274
    :cond_0
    monitor-enter p0

    .line 277
    const/4 v1, 0x0

    .line 280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 282
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_25

    .line 284
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v1, v0

    move-object v13, v1

    .line 288
    :goto_1
    instance-of v1, v2, Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_24

    instance-of v1, v2, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_24

    .line 291
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v1

    .line 293
    :goto_2
    new-instance v1, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    if-nez v1, :cond_1

    .line 297
    new-instance v2, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-direct {v2, v3}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 300
    const-string v3, "false"

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    move-exception v1

    .line 496
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "I/O error"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 303
    :cond_1
    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 305
    :goto_3
    if-eqz v13, :cond_2

    .line 306
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljavax/mail/internet/MimeMultipart;->setPosition(Ljavax/mail/internet/SharedInputStream;)V

    .line 307
    :cond_2
    new-instance v14, Lgnu/inet/util/LineInputStream;

    invoke-direct {v14, v12}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 309
    const/4 v2, 0x0

    .line 310
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/mail/internet/MimeMultipart;->readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 312
    invoke-static {v3}, Ljavax/mail/internet/MimeMultipart;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    if-nez v1, :cond_6

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 317
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_3
    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V

    .line 334
    :cond_4
    if-nez v3, :cond_8

    .line 336
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "No start boundary"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 321
    :cond_6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 325
    if-nez v2, :cond_7

    .line 326
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 339
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 340
    array-length v0, v15

    move/from16 v16, v0

    .line 342
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    .line 343
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_1e

    .line 345
    const/4 v1, 0x0

    .line 346
    if-eqz v13, :cond_b

    .line 349
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->getPosition()J

    move-result-wide v2

    .line 352
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/mail/internet/MimeMultipart;->readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v4}, Ljavax/mail/internet/MimeMultipart;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_9

    .line 356
    :cond_a
    if-nez v4, :cond_23

    .line 358
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF before content body"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    move-object v9, v1

    move-wide v10, v2

    .line 365
    :goto_6
    const/4 v1, 0x0

    .line 366
    if-nez v13, :cond_22

    .line 368
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v1

    .line 374
    :goto_7
    invoke-virtual {v12}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_c

    .line 376
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FIXME: mark not supported on underlying input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_c
    const/4 v3, 0x1

    .line 383
    const/4 v2, -0x1

    .line 384
    const/4 v1, -0x1

    .line 388
    :goto_8
    if-eqz v3, :cond_16

    .line 390
    move/from16 v0, v16

    add-int/lit16 v3, v0, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 391
    const/4 v3, 0x0

    .line 392
    :goto_9
    move/from16 v0, v16

    if-ge v3, v0, :cond_d

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v4

    aget-byte v17, v15, v3

    move/from16 v0, v17

    if-eq v4, v0, :cond_e

    .line 401
    :cond_d
    move/from16 v0, v16

    if-ne v3, v0, :cond_13

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    .line 404
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_f

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v4

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v4, v0, :cond_f

    .line 408
    const/4 v1, 0x1

    .line 409
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move v2, v1

    .line 482
    :goto_a
    if-eqz v13, :cond_1d

    .line 484
    invoke-interface {v13, v10, v11, v5, v6}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 490
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v7, v2

    move-wide v2, v10

    .line 491
    goto/16 :goto_5

    .line 398
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 413
    :cond_f
    :goto_c
    const/16 v4, 0x20

    if-eq v3, v4, :cond_10

    const/16 v4, 0x9

    if-ne v3, v4, :cond_11

    .line 415
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    goto :goto_c

    .line 417
    :cond_11
    const/16 v4, 0xd

    if-ne v3, v4, :cond_12

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_21

    .line 422
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    move v2, v7

    goto :goto_a

    .line 426
    :cond_12
    const/16 v4, 0xa

    if-ne v3, v4, :cond_13

    move v2, v7

    .line 428
    goto :goto_a

    .line 431
    :cond_13
    if-eqz v8, :cond_15

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 433
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 434
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 436
    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    :cond_14
    const/4 v1, -0x1

    move v2, v1

    .line 440
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    .line 442
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    .line 443
    if-gez v3, :cond_17

    .line 445
    const/4 v1, 0x1

    move v2, v1

    .line 446
    goto :goto_a

    .line 448
    :cond_17
    const/16 v4, 0xd

    if-eq v3, v4, :cond_18

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1b

    .line 450
    :cond_18
    const/4 v4, 0x1

    .line 451
    if-eqz v13, :cond_19

    .line 454
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->getPosition()J

    move-result-wide v5

    const-wide/16 v17, 0x1

    sub-long v5, v5, v17

    .line 457
    :cond_19
    const/16 v2, 0xd

    if-ne v3, v2, :cond_20

    .line 459
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v2

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_1a

    move v1, v2

    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    :goto_d
    move-wide v5, v4

    .line 478
    goto/16 :goto_8

    .line 466
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_d

    .line 472
    :cond_1b
    const/4 v4, 0x0

    .line 473
    if-eqz v8, :cond_1c

    .line 475
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1c
    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_d

    .line 488
    :cond_1d
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_b

    .line 498
    :cond_1e
    const/4 v1, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 499
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v1, :cond_1f

    .line 501
    new-instance v1, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v2, "mail.mime.multipart.ignoremissingendboundary"

    invoke-direct {v1, v2}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 503
    const-string v2, "false"

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 504
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Missing end boundary"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_20
    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_d

    :cond_21
    move v2, v7

    goto/16 :goto_a

    :cond_22
    move-object v8, v1

    goto/16 :goto_7

    :cond_23
    move-object v9, v1

    move-wide v10, v2

    goto/16 :goto_6

    :cond_24
    move-object v12, v2

    goto/16 :goto_2

    :cond_25
    move-object v13, v1

    goto/16 :goto_1
.end method

.method readChar(Ljava/io/InputStream;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 520
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-wide v1, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 516
    return-object v0
.end method

.method reset(Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 528
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 529
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 564
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 565
    return-void
.end method

.method protected updateHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 215
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 217
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 231
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 232
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    if-nez v3, :cond_0

    .line 236
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v1, "false"

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Missing boundary parameter"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 244
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 247
    :cond_1
    iget-object v5, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    monitor-enter v5

    .line 249
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 250
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    .line 252
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 253
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 254
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 255
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 256
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 263
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 264
    return-void

    .line 258
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 229
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
