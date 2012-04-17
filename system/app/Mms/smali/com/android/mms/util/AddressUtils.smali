.class public Lcom/android/mms/util/AddressUtils;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "charset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "uri"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, addresses:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, msgId:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 73
    .local v10, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "addr"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 78
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 80
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 84
    const/4 v14, 0x0

    .local v14, i:I
    move v15, v14

    .line 92
    .end local v14           #i:I
    .local v15, i:I
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 93
    .local v11, bytes:[B
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 94
    .local v12, charset:I
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v12, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v15

    .line 96
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 109
    .end local v8           #addresses:[Ljava/lang/String;
    .end local v11           #bytes:[B
    .end local v12           #charset:I
    .end local v14           #i:I
    .local v9, addresses:[Ljava/lang/String;
    :goto_1
    return-object v9

    .line 102
    .end local v9           #addresses:[Ljava/lang/String;
    .restart local v8       #addresses:[Ljava/lang/String;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    .line 108
    const/4 v1, 0x0

    const v2, 0x7f090068

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    move-object v9, v8

    .line 109
    .end local v8           #addresses:[Ljava/lang/String;
    .restart local v9       #addresses:[Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local v9           #addresses:[Ljava/lang/String;
    .restart local v8       #addresses:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v11       #bytes:[B
    .restart local v12       #charset:I
    .restart local v14       #i:I
    :cond_2
    move v15, v14

    .end local v14           #i:I
    .restart local v15       #i:I
    goto :goto_0
.end method

.method public static getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 59
    const-string v0, "type=137"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 64
    const-string v0, "type=151"

    const-string v1, "_id"

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
