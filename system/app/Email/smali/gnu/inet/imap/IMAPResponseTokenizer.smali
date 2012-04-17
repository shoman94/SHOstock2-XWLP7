.class public Lgnu/inet/imap/IMAPResponseTokenizer;
.super Ljava/lang/Object;
.source "IMAPResponseTokenizer.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# instance fields
.field private buffer:[B

.field protected in:Ljava/io/InputStream;


# virtual methods
.method mark(I)V
    .locals 5
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    .line 132
    add-int/lit8 v1, p1, 0x1

    .line 133
    if-ge v1, v0, :cond_0

    .line 135
    sub-int/2addr v0, v1

    .line 136
    new-array v2, v0, [B

    .line 137
    iget-object v3, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object v2, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    goto :goto_0
.end method

.method public next()Lgnu/inet/imap/IMAPResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lgnu/inet/imap/IMAPResponseTokenizer;->read(Z)[B

    move-result-object v9

    .line 154
    if-nez v9, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 441
    :goto_0
    return-object v1

    .line 158
    :cond_0
    array-length v10, v9

    .line 160
    new-instance v7, Lgnu/inet/imap/IMAPResponse;

    invoke-direct {v7}, Lgnu/inet/imap/IMAPResponse;-><init>()V

    .line 161
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 164
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 165
    const/4 v3, 0x0

    .line 166
    const/4 v2, 0x0

    .line 168
    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v10, :cond_22

    .line 170
    aget-byte v13, v9, v8

    .line 171
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_2
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 168
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 174
    :pswitch_0
    if-nez v8, :cond_2

    const/16 v1, 0x2a

    if-ne v13, v1, :cond_2

    .line 176
    const-string v1, "*"

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_3

    .line 178
    :cond_2
    if-nez v8, :cond_3

    const/16 v1, 0x2b

    if-ne v13, v1, :cond_3

    .line 180
    const-string v1, "+"

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_3

    .line 182
    :cond_3
    const/16 v1, 0x20

    if-ne v13, v1, :cond_6

    .line 184
    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 186
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 187
    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    .line 189
    :cond_4
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 190
    invoke-virtual {v7}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto :goto_3

    .line 196
    :cond_5
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto :goto_3

    .line 201
    :cond_6
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 203
    goto :goto_3

    .line 205
    :pswitch_1
    const/16 v1, 0x30

    if-lt v13, v1, :cond_7

    const/16 v1, 0x39

    if-le v13, v1, :cond_23

    .line 207
    :cond_7
    const/4 v1, 0x2

    .line 209
    :goto_4
    const/16 v3, 0x20

    if-ne v13, v3, :cond_8

    .line 211
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 212
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 213
    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 216
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lgnu/inet/imap/IMAPResponse;->count:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v1, 0x2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 223
    goto/16 :goto_3

    .line 218
    :catch_0
    move-exception v1

    .line 220
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_8
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 228
    goto/16 :goto_3

    .line 230
    :pswitch_2
    const/16 v1, 0x20

    if-ne v13, v1, :cond_9

    .line 232
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 233
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 234
    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    .line 235
    const/4 v1, 0x3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 236
    goto/16 :goto_3

    .line 237
    :cond_9
    const/16 v1, 0xa

    if-ne v13, v1, :cond_a

    .line 239
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 240
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 241
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_a
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    .line 249
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    .line 253
    :pswitch_3
    const/16 v1, 0x28

    if-eq v13, v1, :cond_b

    const/16 v1, 0x5b

    if-ne v13, v1, :cond_c

    .line 255
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    .line 257
    invoke-virtual {v12, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v1, 0x4

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 259
    goto/16 :goto_3

    .line 262
    :cond_c
    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const-string v3, "FETCH"

    if-ne v1, v3, :cond_d

    .line 266
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 267
    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 269
    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 270
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    const/4 v1, 0x2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 272
    goto/16 :goto_3

    .line 273
    :cond_d
    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const-string v3, "STATUS"

    if-ne v1, v3, :cond_e

    .line 276
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 277
    const/16 v1, 0x8

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    .line 281
    :cond_e
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    .line 285
    goto/16 :goto_3

    .line 287
    :pswitch_4
    const/16 v1, 0x20

    if-ne v13, v1, :cond_f

    .line 289
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    .line 290
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 291
    const/4 v1, 0x3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    .line 295
    :cond_f
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 297
    goto/16 :goto_3

    .line 299
    :pswitch_5
    const/16 v1, 0x22

    if-ne v13, v1, :cond_11

    .line 301
    if-nez v2, :cond_10

    const/4 v1, 0x1

    :goto_5
    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    .line 303
    :cond_11
    if-eqz v2, :cond_12

    .line 305
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    .line 309
    :cond_12
    const/16 v1, 0x28

    if-eq v13, v1, :cond_13

    const/16 v1, 0x5b

    if-ne v13, v1, :cond_15

    .line 311
    :cond_13
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 312
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    if-lez v14, :cond_14

    .line 315
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 316
    new-instance v15, Ljava/lang/String;

    const-string v16, "US-ASCII"

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 318
    new-instance v15, Lgnu/inet/imap/Pair;

    invoke-direct {v15, v14, v13}, Lgnu/inet/imap/Pair;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 319
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 326
    :goto_6
    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 327
    goto/16 :goto_3

    .line 324
    :cond_14
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 328
    :cond_15
    const/16 v1, 0x29

    if-eq v13, v1, :cond_16

    const/16 v1, 0x5d

    if-ne v13, v1, :cond_18

    .line 330
    :cond_16
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 332
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    if-lez v13, :cond_17

    .line 334
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 335
    new-instance v14, Ljava/lang/String;

    const-string v15, "US-ASCII"

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 337
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_17
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 340
    goto/16 :goto_3

    .line 341
    :cond_18
    const/16 v1, 0x7b

    if-ne v13, v1, :cond_19

    .line 343
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 344
    const/4 v1, 0x5

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    .line 346
    :cond_19
    const/16 v1, 0x20

    if-ne v13, v1, :cond_1c

    .line 348
    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 350
    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    .line 354
    :cond_1a
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 356
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    if-lez v13, :cond_1b

    .line 358
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 359
    new-instance v14, Ljava/lang/String;

    const-string v15, "US-ASCII"

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 361
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1b
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 364
    goto/16 :goto_3

    .line 366
    :cond_1c
    const/16 v1, 0xa

    if-ne v13, v1, :cond_1d

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    .line 371
    goto/16 :goto_0

    .line 373
    :cond_1d
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    .line 375
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    .line 380
    :pswitch_6
    const/16 v1, 0x7d

    if-ne v13, v1, :cond_1e

    .line 382
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 383
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 384
    new-instance v4, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v4, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 387
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v17

    .line 393
    goto/16 :goto_3

    .line 389
    :catch_1
    move-exception v1

    .line 391
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_1e
    const/16 v1, 0xa

    if-ne v13, v1, :cond_1f

    .line 396
    const/4 v1, 0x6

    .line 397
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    const/4 v3, 0x0

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto/16 :goto_3

    .line 400
    :cond_1f
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    .line 402
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    .line 406
    :pswitch_7
    if-lt v5, v4, :cond_20

    .line 408
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 409
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 410
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v3, 0x0

    .line 413
    const/4 v1, 0x4

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    move/from16 v18, v4

    move v4, v5

    move-object v5, v3

    move/from16 v3, v18

    .line 414
    goto/16 :goto_3

    .line 417
    :cond_20
    invoke-virtual {v6, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    add-int/lit8 v1, v5, 0x1

    move-object v5, v6

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move v1, v2

    move/from16 v2, v17

    .line 420
    goto/16 :goto_3

    .line 422
    :pswitch_8
    const/16 v1, 0xa

    if-ne v13, v1, :cond_21

    .line 424
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 425
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 426
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v7, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    .line 430
    goto/16 :goto_0

    .line 432
    :cond_21
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    .line 434
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 440
    :cond_22
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lgnu/inet/imap/IMAPResponseTokenizer;->read(Z)[B

    .line 441
    invoke-virtual/range {p0 .. p0}, Lgnu/inet/imap/IMAPResponseTokenizer;->next()Lgnu/inet/imap/IMAPResponse;

    move-result-object v1

    goto/16 :goto_0

    :cond_23
    move v1, v3

    goto/16 :goto_4

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
    .end packed-switch

    .line 267
    :array_0
    .array-data 0x1
        0x46t
        0x45t
        0x54t
        0x43t
        0x48t
        0x20t
    .end array-data
.end method

.method read(Z)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    .line 123
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 101
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 103
    const/16 v0, 0x1000

    .line 105
    :cond_1
    new-array v3, v0, [B

    move v2, v1

    .line 107
    :goto_1
    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_1

    .line 111
    :cond_2
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    if-nez v0, :cond_5

    move v0, v1

    .line 116
    :goto_2
    add-int v4, v0, v2

    new-array v4, v4, [B

    .line 117
    if-eqz v0, :cond_4

    .line 119
    iget-object v5, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_4
    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iput-object v4, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    .line 123
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    goto :goto_0

    .line 115
    :cond_5
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    goto :goto_2
.end method
