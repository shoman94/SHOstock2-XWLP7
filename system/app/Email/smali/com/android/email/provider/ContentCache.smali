.class public Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCache$CacheType;
    }
.end annotation


# static fields
.field static mCacheType:Lcom/android/email/provider/ContentCache$CacheType;


# instance fields
.field mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

.field mCacheLru:Lcom/android/email/provider/ContentCacheLru;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "baseProjection"
    .parameter "maxSize"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/email/provider/ContentCache;->init()V

    .line 31
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_0

    .line 32
    new-instance v0, Lcom/android/email/provider/ContentCacheLru;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_1

    .line 34
    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "ContentCache"

    const-string v1, "ContentCache() initialize error. no available cache!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init()V
    .locals 4

    .prologue
    .line 41
    sget-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v2, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v1, v2, :cond_0

    .line 44
    :try_start_0
    const-string v1, "com.android.email.provider.ContentCacheLru"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    const-string v1, "ContentCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() done : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 47
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    goto :goto_0
.end method

.method public static notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 159
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_0

    .line 160
    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_1

    .line 162
    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notCacheable() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCacheToken(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "id"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCacheToken() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "operation"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lock(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->lock(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->lock(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    check-cast p4, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    .end local p4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 149
    .restart local p4
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    check-cast p4, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    .end local p4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheHashMap;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 153
    .restart local p4
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordQueryTime(Landroid/database/Cursor;J)V
    .locals 3
    .parameter "c"
    .parameter "nanoTime"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->recordQueryTime(Landroid/database/Cursor;J)V

    goto :goto_0

    .line 142
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordQueryTime() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "id"
    .parameter "values"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
