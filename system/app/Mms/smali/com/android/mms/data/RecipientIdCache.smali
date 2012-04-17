.class public Lcom/android/mms/data/RecipientIdCache;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/RecipientIdCache$Entry;
    }
.end annotation


# static fields
.field private static sAllCanonical:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/RecipientIdCache;

.field private static sSingleCanonicalAddressUri:Landroid/net/Uri;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    .line 42
    const-string v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public static dump()V
    .locals 6

    .prologue
    .line 250
    sget-object v3, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v3

    .line 251
    :try_start_0
    const-string v2, "Mms/cache"

    const-string v4, "*** Recipient ID cache dump ***"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 253
    .local v1, id:Ljava/lang/Long;
    const-string v4, "Mms/cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v1           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    return-void
.end method

.method public static fill()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 81
    const-string v1, "Mms:threadcache"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "Mms/cache"

    const-string v2, "[RecipientIdCache] fill: begin"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v0, v1, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 87
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 89
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 90
    const-string v1, "Mms/cache"

    const-string v2, "null Cursor in fill()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v1, v1, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 99
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 102
    .local v8, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, number:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v1, v1, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v8           #id:J
    .end local v10           #number:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :catchall_1
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 105
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    const-string v1, "Mms:threadcache"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "Mms/cache"

    const-string v2, "[RecipientIdCache] fill: finished"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    goto :goto_0
.end method

.method public static getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "spaceSepIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/RecipientIdCache$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v12, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v12

    .line 119
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v9, numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    const-string v11, " "

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, ids:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .local v3, id:Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 131
    .local v6, longId:J
    :try_start_2
    sget-object v11, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v11, v11, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 133
    .local v8, number:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 134
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v10, s:Ljava/lang/StringBuffer;
    const-string v11, "Mms/cache"

    const-string v13, "RecipientId "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " not in cache!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v11, "Mms:threadcache"

    const/4 v13, 0x0

    invoke-static {v11, v13}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 138
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->fill()V

    .line 142
    sget-object v11, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v11, v11, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #number:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 145
    .end local v10           #s:Ljava/lang/StringBuffer;
    .restart local v8       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 146
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .restart local v10       #s:Ljava/lang/StringBuffer;
    const-string v11, "Mms/cache"

    const-string v13, "RecipientId "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " has empty number!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v6           #longId:J
    .end local v8           #number:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 150
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #longId:J
    .restart local v8       #number:Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/android/mms/data/RecipientIdCache$Entry;

    invoke-direct {v11, v6, v7, v8}, Lcom/android/mms/data/RecipientIdCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #longId:J
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 153
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #ids:[Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v9       #numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    :cond_3
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/RecipientIdCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/RecipientIdCache$1;

    invoke-direct {v1}, Lcom/android/mms/data/RecipientIdCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method private updateCanonicalAddressInDb(JLjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "number"

    .prologue
    .line 225
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RecipientIdCache] updateCanonicalAddressInDb: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, buf:Ljava/lang/StringBuilder;
    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 237
    .local v4, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 241
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/mms/data/RecipientIdCache$2;

    const-string v2, "updateCanonicalAddressInDb"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/RecipientIdCache$2;-><init>(Lcom/android/mms/data/RecipientIdCache;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lcom/android/mms/data/RecipientIdCache$2;->start()V

    .line 246
    return-void
.end method

.method public static updateNumber(Lcom/android/mms/data/Contact;)V
    .locals 8
    .parameter "contact"

    .prologue
    .line 158
    const-wide/16 v2, 0x0

    .line 160
    .local v2, recipientId:J
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/mms/data/Contact;->setIsNumberModified(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getRecipientId()J

    move-result-wide v2

    .line 168
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, number1:Ljava/lang/String;
    sget-object v5, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v5, v5, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, number2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 177
    .local v4, s:Ljava/lang/StringBuffer;
    const-string v5, "Mms/cache"

    const-string v6, "[RecipientIdCache] updateNumbers: comparing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    sget-object v5, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v5, v5, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v5, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v5, v2, v3, v0}, Lcom/android/mms/data/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public static updateNumbers(JLcom/android/mms/data/ContactList;)V
    .locals 11
    .parameter "threadId"
    .parameter "contacts"

    .prologue
    const/4 v10, 0x0

    .line 191
    const-wide/16 v4, 0x0

    .line 193
    .local v4, recipientId:J
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 194
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    invoke-virtual {v0, v10}, Lcom/android/mms/data/Contact;->setIsNumberModified(Z)V

    .line 201
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getRecipientId()J

    move-result-wide v4

    .line 202
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, number1:Ljava/lang/String;
    sget-object v7, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v7, v7, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, number2:Ljava/lang/String;
    const-string v7, "Mms:app"

    invoke-static {v7, v10}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v6, s:Ljava/lang/StringBuffer;
    const-string v7, "Mms/cache"

    const-string v8, "[RecipientIdCache] updateNumbers: comparing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    sget-object v7, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v7, v7, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v7, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v7, v4, v5, v2}, Lcom/android/mms/data/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number1:Ljava/lang/String;
    .end local v3           #number2:Ljava/lang/String;
    :cond_2
    return-void
.end method
