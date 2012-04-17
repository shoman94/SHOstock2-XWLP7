.class public Lcom/android/mms/transaction/MTMessageParser;
.super Ljava/lang/Object;
.source "MTMessageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTCmd(Ljava/lang/String;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    if-eqz p0, :cond_3

    .line 134
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, str:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 137
    .local v1, msgTockens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 138
    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    aget-object v5, v1, v4

    const-string v6, "SETPL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    return v3

    .line 145
    .restart local v0       #i:I
    .restart local v1       #msgTockens:[Ljava/lang/String;
    .restart local v2       #str:Ljava/util/StringTokenizer;
    :cond_2
    aget-object v5, v1, v4

    const-string v6, "SETPLD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 147
    aget-object v5, v1, v4

    const-string v6, "SETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    aget-object v5, v1, v4

    const-string v6, "RESETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    aget-object v5, v1, v4

    const-string v6, "HIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    aget-object v5, v1, v4

    const-string v6, "UNHIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    aget-object v5, v1, v4

    const-string v6, "DELUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    aget-object v5, v1, v4

    const-string v6, "GETPBKA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    aget-object v5, v1, v4

    const-string v6, "GETPBKG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    aget-object v5, v1, v4

    const-string v6, "GETPBKW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    aget-object v5, v1, v4

    const-string v6, "GETPBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    aget-object v5, v1, v4

    const-string v6, "SETCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    aget-object v5, v1, v4

    const-string v6, "DEACTCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    aget-object v5, v1, v4

    const-string v6, "SETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 175
    aget-object v5, v1, v4

    const-string v6, "RESETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    aget-object v5, v1, v4

    const-string v6, "GETLOCINFO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 182
    goto/16 :goto_1

    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :cond_3
    move v3, v4

    .line 185
    goto/16 :goto_1
.end method

.method private static isMTOn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 193
    const-string v6, "status"

    .line 195
    .local v6, STATUS:Ljava/lang/String;
    const-string v0, "content://com.samsung.mobileTracker.provider.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 200
    .local v8, status:Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 205
    :cond_0
    if-eqz v7, :cond_1

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 214
    :goto_0
    return v0

    .line 203
    :cond_2
    :try_start_1
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 205
    if-eqz v7, :cond_3

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v9

    .line 214
    goto :goto_0
.end method

.method public static messageParser(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "message"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-eqz p0, :cond_2

    .line 111
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_0

    .line 112
    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received 0x1b"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/mms/transaction/MTMessageParser;->isMTOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/transaction/MTMessageParser;->isMTCmd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received manual command"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 126
    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "Mms/MTMessageParser"

    const-string v3, "Mobile Tracker - Normal msg received"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 120
    goto :goto_0

    :cond_2
    move v1, v2

    .line 123
    goto :goto_0
.end method
