.class public final Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCacheHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCacheHashMap;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheHashMap;Ljava/lang/String;)V
    .locals 1
    .parameter "cursor"
    .parameter "cache"
    .parameter "name"

    .prologue
    const/4 v0, -0x1

    .line 307
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 299
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    .line 302
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCount:I

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->isClosed:Z

    .line 308
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCursor:Landroid/database/Cursor;

    .line 309
    iput-object p2, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    .line 311
    sget-object v0, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->add(Ljava/lang/Object;)V

    .line 312
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    monitor-enter v2

    .line 323
    :try_start_0
    sget-object v1, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 324
    .local v0, count:I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCacheHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 327
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->isClosed:Z

    .line 329
    return-void

    .line 327
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCount:I

    if-gez v0, :cond_0

    .line 339
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCount:I

    .line 341
    :cond_0
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 398
    iget v1, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 378
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_1
    iput p1, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
