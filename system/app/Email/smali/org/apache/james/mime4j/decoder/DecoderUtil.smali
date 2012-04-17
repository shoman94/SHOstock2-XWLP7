.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chardet(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "s"

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 148
    .end local p0
    :goto_0
    return-object p0

    .line 69
    .restart local p0
    :cond_0
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v14, imp:Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 72
    .local v6, chars:[C
    move-object v3, v6

    .local v3, arr$:[C
    array-length v15, v3

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_1

    aget-char v5, v3, v13

    .line 73
    .local v5, c:C
    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 75
    .end local v5           #c:C
    :cond_1
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 76
    .local v4, buf:[B
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 78
    const/4 v6, 0x0

    .line 80
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->isAscii([BI)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 81
    const/16 p0, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const-string v19, "<"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "@"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, ">"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 85
    const/16 v19, 0x0

    const-string v20, "<"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "\""

    const-string v21, " "

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 86
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 87
    move-object v3, v6

    array-length v15, v3

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_3

    aget-char v5, v3, v13

    .line 88
    .restart local v5       #c:C
    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 89
    .end local v5           #c:C
    :cond_3
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 90
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 91
    const/4 v6, 0x0

    .line 93
    :cond_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    new-instance v9, Lorg/mozilla/universalchardet/UniversalDetector;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 96
    .local v9, detector:Lorg/mozilla/universalchardet/UniversalDetector;
    const/16 v16, 0xa

    .line 98
    .local v16, nRefLength:I
    array-length v0, v4

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 99
    const/16 v17, 0x0

    .line 100
    .local v17, nTotal:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 101
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v4, v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    .line 102
    array-length v0, v4

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 103
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 108
    .end local v12           #i:I
    .end local v17           #nTotal:I
    :cond_5
    :goto_4
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 111
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, encoding:Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 114
    sget-object v19, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Detected encoding = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 115
    sget-object v19, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    sget-object v19, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    sget-object v19, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    sget-object v19, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 119
    :cond_6
    const/4 v10, 0x0

    .line 124
    :cond_7
    :goto_5
    invoke-static {}, Lorg/apache/james/mime4j/util/CharsetUtil;->getLocalCharset()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, defaultCharset:Ljava/lang/String;
    if-eqz v8, :cond_8

    const-string v19, "ASCII"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-nez v19, :cond_8

    .line 128
    :try_start_1
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedAllCharset()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, getDetectedAllCharset:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, tokens1:[Ljava/lang/String;
    move-object/from16 v3, v18

    .local v3, arr$:[Ljava/lang/String;
    array-length v15, v3

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v15, :cond_8

    aget-object v7, v3, v13

    .line 131
    .local v7, charset:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    if-eqz v19, :cond_d

    .line 132
    move-object v10, v8

    .line 139
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #charset:Ljava/lang/String;
    .end local v11           #getDetectedAllCharset:Ljava/lang/String;
    .end local v18           #tokens1:[Ljava/lang/String;
    :cond_8
    :goto_7
    if-nez v10, :cond_9

    .line 140
    move-object v10, v8

    .line 143
    :cond_9
    :try_start_2
    invoke-virtual {v9}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 144
    const/4 v9, 0x0

    move-object/from16 p0, v10

    .line 145
    goto/16 :goto_0

    .line 100
    .end local v8           #defaultCharset:Ljava/lang/String;
    .end local v10           #encoding:Ljava/lang/String;
    .local v3, arr$:[C
    .restart local v12       #i:I
    .restart local v17       #nTotal:I
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 107
    .end local v12           #i:I
    .end local v17           #nTotal:I
    :cond_b
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v4, v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto/16 :goto_4

    .line 146
    .end local v3           #arr$:[C
    .end local v4           #buf:[B
    .end local v6           #chars:[C
    .end local v9           #detector:Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v13           #i$:I
    .end local v14           #imp:Ljava/io/ByteArrayOutputStream;
    .end local v15           #len$:I
    .end local v16           #nRefLength:I
    :catch_0
    move-exception v19

    .line 148
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 121
    .restart local v3       #arr$:[C
    .restart local v4       #buf:[B
    .restart local v6       #chars:[C
    .restart local v9       #detector:Lorg/mozilla/universalchardet/UniversalDetector;
    .restart local v10       #encoding:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #imp:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #len$:I
    .restart local v16       #nRefLength:I
    :cond_c
    sget-object v19, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    const-string v20, "No encoding detected."

    invoke-virtual/range {v19 .. v20}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 130
    .local v3, arr$:[Ljava/lang/String;
    .restart local v7       #charset:Ljava/lang/String;
    .restart local v8       #defaultCharset:Ljava/lang/String;
    .restart local v11       #getDetectedAllCharset:Ljava/lang/String;
    .restart local v18       #tokens1:[Ljava/lang/String;
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 136
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #charset:Ljava/lang/String;
    .end local v11           #getDetectedAllCharset:Ljava/lang/String;
    .end local v18           #tokens1:[Ljava/lang/String;
    :catch_1
    move-exception v19

    goto :goto_7
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 8
    .parameter "s"

    .prologue
    .line 289
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 291
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 294
    .local v4, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :try_start_0
    const-string v6, "US-ASCII"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 295
    .local v2, bytes:[B
    new-instance v5, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 298
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .local v5, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 299
    .local v0, b:I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 300
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 306
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :goto_1
    :try_start_2
    sget-object v6, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v6, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    if-eqz v4, :cond_0

    .line 310
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 309
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v0       #b:I
    .restart local v2       #bytes:[B
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :cond_1
    if-eqz v5, :cond_2

    .line 310
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v4, v5

    .line 313
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    goto :goto_2

    .line 311
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .line 314
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    goto :goto_2

    .line 308
    .end local v0           #b:I
    .end local v2           #bytes:[B
    :catchall_0
    move-exception v6

    .line 309
    :goto_3
    if-eqz v4, :cond_3

    .line 310
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 313
    :cond_3
    :goto_4
    throw v6

    .line 311
    .restart local v3       #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 308
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v0       #b:I
    .restart local v2       #bytes:[B
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    goto :goto_3

    .line 302
    .end local v0           #b:I
    .end local v2           #bytes:[B
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 8
    .parameter "s"

    .prologue
    .line 252
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 255
    .local v4, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :try_start_0
    const-string v6, "US-ASCII"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 256
    .local v2, bytes:[B
    new-instance v5, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 260
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .local v5, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 261
    .local v0, b:I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 262
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 268
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :goto_1
    :try_start_2
    sget-object v6, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v6, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    if-eqz v4, :cond_0

    .line 272
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 277
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 271
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v0       #b:I
    .restart local v2       #bytes:[B
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :cond_1
    if-eqz v5, :cond_2

    .line 272
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v4, v5

    .line 275
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    goto :goto_2

    .line 273
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .line 276
    .end local v5           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    goto :goto_2

    .line 270
    .end local v0           #b:I
    .end local v2           #bytes:[B
    :catchall_0
    move-exception v6

    .line 271
    :goto_3
    if-eqz v4, :cond_3

    .line 272
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 275
    :cond_3
    :goto_4
    throw v6

    .line 273
    .restart local v3       #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 270
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v0       #b:I
    .restart local v2       #bytes:[B
    .restart local v5       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    .restart local v4       #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    goto :goto_3

    .line 264
    .end local v0           #b:I
    .end local v2           #bytes:[B
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/16 v9, 0x3f

    const/4 v7, 0x0

    .line 443
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 444
    .local v5, qm1:I
    add-int/lit8 v8, p2, -0x2

    if-ne v5, v8, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-object v7

    .line 447
    :cond_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 448
    .local v6, qm2:I
    add-int/lit8 v8, p2, -0x2

    if-eq v6, v8, :cond_0

    .line 451
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, mimeCharset:Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, encoding:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, p2, -0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, encodedText:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 457
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 458
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t have a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "corresponding Java charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 464
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 465
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 472
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 473
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 474
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing encoded text in encoded word: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 482
    :cond_4
    const-string v7, ""

    goto/16 :goto_0

    .line 489
    :cond_5
    :try_start_0
    const-string v8, "Q"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 490
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 491
    :cond_6
    const-string v8, "B"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 492
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 494
    :cond_7
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 495
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 503
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 507
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 508
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not decode encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "body"

    .prologue
    const/16 v12, 0x3f

    const/4 v10, -0x1

    .line 382
    const-string v11, "=?"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1

    .line 416
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 386
    .restart local p0
    :cond_1
    const/4 v4, 0x0

    .line 387
    .local v4, previousEnd:I
    const/4 v5, 0x0

    .line 389
    .local v5, previousWasEncoded:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_1
    const-string v11, "=?"

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, begin:I
    add-int/lit8 v3, v0, 0x2

    .line 402
    .local v3, endScan:I
    if-eq v0, v10, :cond_2

    .line 403
    add-int/lit8 v11, v3, 0x2

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 404
    .local v6, qm1:I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 405
    .local v7, qm2:I
    if-eq v7, v10, :cond_2

    .line 406
    add-int/lit8 v3, v7, 0x1

    .line 410
    .end local v6           #qm1:I
    .end local v7           #qm2:I
    :cond_2
    if-ne v0, v10, :cond_3

    move v2, v10

    .line 411
    .local v2, end:I
    :goto_2
    if-ne v2, v10, :cond_4

    .line 412
    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 410
    .end local v2           #end:I
    :cond_3
    const-string v11, "?="

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 419
    .restart local v2       #end:I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 421
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, sep:Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, decoded:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 425
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :goto_3
    move v4, v2

    .line 435
    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 436
    :goto_4
    goto :goto_1

    .line 428
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 429
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 435
    :cond_8
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public static decodeGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 239
    .end local p0
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 228
    .end local v1           #result:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-string v2, "=?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 230
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 232
    move-object v1, p0

    .end local v0           #charset:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :goto_1
    move-object p0, v1

    .line 239
    goto :goto_0

    .line 234
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #charset:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1

    .line 236
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 355
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 356
    .local v0, c:C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 357
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    .end local v0           #c:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method protected static isAscii([BI)Z
    .locals 2
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 56
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 60
    :goto_1
    return v1

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 190
    if-eqz p0, :cond_0

    const-string v8, "=?"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    :cond_0
    move-object v7, p0

    .line 208
    :goto_0
    return-object v7

    .line 194
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 200
    .local v3, chars:[C
    move-object v0, v3

    .local v0, arr$:[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-char v2, v0, v5

    .line 201
    .local v2, c:C
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    .end local v2           #c:C
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v7, result:Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v0           #arr$:[C
    .end local v3           #chars:[C
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #result:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 206
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    move-object v7, p0

    .restart local v7       #result:Ljava/lang/String;
    goto :goto_0
.end method
