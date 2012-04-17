.class public Lcom/android/mms/transaction/WapPushMessage;
.super Ljava/lang/Object;
.source "WapPushMessage.java"


# instance fields
.field private action:I

.field private created:J

.field private encodingCharsetName:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private in:Ljava/io/ByteArrayInputStream;

.field private publicId:I

.field private publicIdStr:Ljava/lang/String;

.field private siExpires:J

.field private siId:Ljava/lang/String;

.field private stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private wbxmlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 112
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 114
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicIdStr:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    .line 118
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    .line 120
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    .line 122
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    .line 124
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 130
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    return-void
.end method

.method private hasProtocol(Ljava/lang/String;)Z
    .locals 1
    .parameter "href"

    .prologue
    .line 341
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private parseDateTime()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    .line 418
    .local v7, datetimeEncoding:I
    const/16 v2, 0xc3

    if-eq v7, v2, :cond_0

    .line 419
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported datetime encoding. datetime encoding= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", remainBytes ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v8

    .line 425
    .local v8, datetimeLength:I
    const/4 v2, 0x2

    if-ge v8, v2, :cond_1

    .line 426
    new-instance v2, Lcom/google/android/mms/InvalidHeaderValueException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid datetime length. length= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 431
    .local v0, datetime:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 432
    .local v1, year:I
    const/4 v10, 0x0

    .line 433
    .local v10, month:I
    const/4 v3, 0x0

    .line 434
    .local v3, day:I
    const/4 v4, 0x0

    .line 435
    .local v4, hour:I
    const/4 v5, 0x0

    .line 436
    .local v5, minute:I
    const/4 v6, 0x0

    .line 438
    .local v6, second:I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v11, yearBuf:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 440
    packed-switch v9, :pswitch_data_0

    .line 439
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 442
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 445
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 447
    goto :goto_1

    .line 449
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 450
    goto :goto_1

    .line 452
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 453
    goto :goto_1

    .line 455
    :pswitch_4
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 456
    goto :goto_1

    .line 458
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 459
    goto :goto_1

    .line 461
    :pswitch_6
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 462
    goto :goto_1

    .line 468
    :cond_2
    add-int/lit8 v2, v10, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 500
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    return-wide v12

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseSIAttr()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 253
    const/4 v5, 0x1

    .line 254
    .local v5, isReadByte:Z
    const/4 v8, -0x1

    .line 257
    .local v8, token:I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v8

    .line 260
    :cond_1
    const/4 v5, 0x1

    .line 262
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 338
    return-void

    .line 266
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 334
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported attribute. attribute= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 272
    :pswitch_0
    iput v8, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    goto :goto_0

    .line 278
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    goto :goto_0

    .line 281
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v6, siIdBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 284
    const/4 v5, 0x0

    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, tempsiId:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 289
    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    goto :goto_0

    .line 294
    .end local v6           #siIdBuf:Ljava/lang/StringBuffer;
    .end local v7           #tempsiId:Ljava/lang/String;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 297
    const/4 v5, 0x0

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 302
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 305
    const/4 v5, 0x0

    .line 307
    const-string v9, "http://"

    invoke-virtual {v1, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 310
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 313
    const/4 v5, 0x0

    .line 315
    const-string v9, "http://www."

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 321
    const/4 v5, 0x0

    .line 323
    const-string v9, "https://"

    invoke-virtual {v3, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 326
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 329
    const/4 v5, 0x0

    .line 331
    const-string v9, "https://www."

    invoke-virtual {v4, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseSLAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 345
    const/4 v5, 0x1

    .line 346
    .local v5, isReadByte:Z
    const/4 v6, -0x1

    .line 349
    .local v6, token:I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v6

    .line 352
    :cond_1
    const/4 v5, 0x1

    .line 354
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 414
    return-void

    .line 358
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 410
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported attribute. attribute= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 362
    :pswitch_0
    iput v6, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 365
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 368
    const/4 v5, 0x0

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    .line 372
    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/WapPushMessage;->hasProtocol(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 373
    const-string v7, "Mms/WapPushMessage"

    const-string v8, "WAP Sl message uses default protocol"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 378
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 381
    const/4 v5, 0x0

    .line 383
    const-string v7, "http://"

    invoke-virtual {v1, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 386
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 388
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 389
    const/4 v5, 0x0

    .line 391
    const-string v7, "http://www."

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 394
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 397
    const/4 v5, 0x0

    .line 399
    const-string v7, "https://"

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 405
    const/4 v5, 0x0

    .line 407
    const-string v7, "https://www."

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseTag(I)V
    .locals 3
    .parameter "_tagToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSIAttr()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSLAttr()V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported operation. publicId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 506
    .local v0, inByte:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 507
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    return v0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 516
    .local v1, intValue:I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 517
    .local v0, inByte:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 518
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 520
    return v1
.end method

.method private readOPAQUE()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 526
    .local v1, inByte:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 527
    .local v0, buf:Ljava/lang/StringBuffer;
    shr-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readString(Ljava/lang/StringBuffer;)I
    .locals 7
    .parameter "_value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 536
    .local v0, inByte:I
    sparse-switch v0, :sswitch_data_0

    .line 568
    return v0

    .line 538
    :sswitch_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 540
    .local v2, stringValues:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 542
    .local v1, stringValue:I
    if-nez v1, :cond_0

    .line 543
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 552
    .end local v1           #stringValue:I
    .end local v2           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v3

    .line 553
    .local v3, tableIndex:I
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 556
    .end local v3           #tableIndex:I
    :sswitch_2
    const-string v4, ".com/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 559
    :sswitch_3
    const-string v4, ".edu/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 562
    :sswitch_4
    const-string v4, ".net/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 565
    :sswitch_5
    const-string v4, ".org/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_1
        0x85 -> :sswitch_2
        0x86 -> :sswitch_3
        0x87 -> :sswitch_4
        0x88 -> :sswitch_5
    .end sparse-switch
.end method

.method public static slActionToPriority(I)I
    .locals 1
    .parameter "_action"

    .prologue
    const/4 v0, 0x3

    .line 651
    packed-switch p0, :pswitch_data_0

    .line 661
    :goto_0
    :pswitch_0
    return v0

    .line 653
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 635
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    return-wide v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    return v0
.end method

.method public getSiExpires()J
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    return-wide v0
.end method

.method public getSiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public parse([B)V
    .locals 19
    .parameter "_wbxmlData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    invoke-direct {v15, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 145
    const/4 v4, -0x1

    .line 146
    .local v4, publicIdStIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    if-nez v14, :cond_0

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v4

    .line 151
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v1

    .line 152
    .local v1, encodingCharset:I
    sparse-switch v1, :sswitch_data_0

    .line 163
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported encoding charset. charset= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1           #encodingCharset:I
    .end local v4           #publicIdStIndex:I
    :catch_0
    move-exception v2

    .line 232
    .local v2, ex:Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 234
    throw v2

    .line 154
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #encodingCharset:I
    .restart local v4       #publicIdStIndex:I
    :sswitch_0
    :try_start_1
    const-string v14, "US-ASCII"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v6

    .line 169
    .local v6, stringTableLength:I
    const/4 v8, 0x0

    .line 170
    .local v8, stringValues:Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 171
    .local v5, startIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 172
    if-nez v8, :cond_1

    .line 173
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    move v5, v3

    .line 177
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    .line 179
    .local v7, stringValue:I
    if-nez v7, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v8, 0x0

    .line 171
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    .end local v3           #i:I
    .end local v5           #startIndex:I
    .end local v6           #stringTableLength:I
    .end local v7           #stringValue:I
    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    const-string v14, "ISO-8859-1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 160
    :sswitch_2
    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 185
    .restart local v3       #i:I
    .restart local v5       #startIndex:I
    .restart local v6       #stringTableLength:I
    .restart local v7       #stringValue:I
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 193
    .end local v7           #stringValue:I
    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v10, textBuf:Ljava/lang/StringBuffer;
    :goto_3
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 198
    .local v13, token:I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 228
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eqz v14, :cond_4

    .line 229
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 236
    :cond_4
    return-void

    .line 202
    :cond_5
    sparse-switch v13, :sswitch_data_1

    .line 224
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/WapPushMessage;->parseTag(I)V

    goto :goto_3

    .line 206
    :sswitch_4
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v12, textValues:Ljava/io/ByteArrayOutputStream;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v11

    .line 210
    .local v11, textValue:I
    if-nez v11, :cond_6

    .line 211
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 215
    :cond_6
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 220
    .end local v11           #textValue:I
    .end local v12           #textValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v9

    .line 221
    .local v9, tableIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch

    .line 202
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x83 -> :sswitch_5
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x9

    const/16 v7, 0xa

    .line 574
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 576
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "WapPushMessage = {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "wbxmlVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "publicId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 581
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 583
    .local v1, cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 585
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 586
    .local v2, calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 590
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 591
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 596
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 597
    .restart local v1       #cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 599
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 600
    .restart local v2       #calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 603
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 605
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siExpires= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 609
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 610
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "href= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 611
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 612
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "text= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 613
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
