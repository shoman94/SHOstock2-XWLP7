.class public final Lcom/android/email/provider/ContentCacheLru;
.super Ljava/lang/Object;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCacheLru$Statistics;,
        Lcom/android/email/provider/ContentCacheLru$CacheCounter;,
        Lcom/android/email/provider/ContentCacheLru$CachedCursor;,
        Lcom/android/email/provider/ContentCacheLru$CacheToken;,
        Lcom/android/email/provider/ContentCacheLru$TokenList;,
        Lcom/android/email/provider/ContentCacheLru$CounterMap;
    }
.end annotation


# static fields
.field static sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCacheLru;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotCacheable:I

.field private static final sNotCacheableMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseProjection:[Ljava/lang/String;

.field private final mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

.field mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/android/email/provider/ContentCacheLru;->sNotCacheable:I

    .line 80
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-direct {v0}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sNotCacheableMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "baseProjection"
    .parameter "maxSize"

    .prologue
    .line 406
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    .line 407
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    .line 408
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$1;

    invoke-direct {v0, p0, p3}, Lcom/android/email/provider/ContentCacheLru$1;-><init>(Lcom/android/email/provider/ContentCacheLru;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    .line 418
    iput-object p2, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCache-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLogTag:Ljava/lang/String;

    .line 420
    sget-object v0, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$TokenList;

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheLru$TokenList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    .line 422
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-direct {v0, p3}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    .line 423
    new-instance v0, Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-direct {v0, p0}, Lcom/android/email/provider/ContentCacheLru$Statistics;-><init>(Lcom/android/email/provider/ContentCacheLru;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    .line 424
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/ContentCacheLru;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/provider/ContentCacheLru;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "id"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method private getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CachedCursor;
    .locals 2
    .parameter "id"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 531
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$308(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    .line 533
    new-instance v1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V

    .line 536
    :goto_0
    return-object v1

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$408(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    .line 536
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;
    .locals 15
    .parameter "id"
    .parameter "projection"
    .parameter "values"

    .prologue
    .line 544
    invoke-direct/range {p0 .. p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 545
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_8

    .line 547
    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 548
    .local v9, mc:Landroid/database/MatrixCursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_0

    .line 586
    .end local v9           #mc:Landroid/database/MatrixCursor;
    :goto_0
    return-object v9

    .line 551
    .restart local v9       #mc:Landroid/database/MatrixCursor;
    :cond_0
    move-object/from16 v0, p2

    array-length v14, v0

    new-array v10, v14, [Ljava/lang/Object;

    .line 552
    .local v10, row:[Ljava/lang/Object;
    if-eqz p3, :cond_1

    .line 554
    new-instance v13, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .end local p3
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 p3, v13

    .line 556
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local p3
    :cond_1
    const/4 v5, 0x0

    .line 557
    .local v5, i:I
    move-object/from16 v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v1, v7

    .line 558
    .local v3, column:Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 559
    .local v4, columnIndex:I
    if-gez v4, :cond_2

    .line 560
    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$508(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    .line 561
    const/4 v9, 0x0

    goto :goto_0

    .line 564
    :cond_2
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 565
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 566
    .local v11, val:Ljava/lang/Object;
    instance-of v14, v11, Ljava/lang/Boolean;

    if-eqz v14, :cond_4

    .line 567
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v11, v14, :cond_3

    const-string v12, "1"

    .line 571
    .local v12, value:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 575
    .end local v11           #val:Ljava/lang/Object;
    :goto_3
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aput-object v12, v10, v6

    .line 557
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .line 567
    .end local v12           #value:Ljava/lang/String;
    .restart local v11       #val:Ljava/lang/Object;
    :cond_3
    const-string v12, "0"

    goto :goto_2

    .line 569
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #value:Ljava/lang/String;
    goto :goto_2

    .line 573
    .end local v11           #val:Ljava/lang/Object;
    .end local v12           #value:Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #value:Ljava/lang/String;
    goto :goto_3

    .line 578
    .end local v3           #column:Ljava/lang/String;
    .end local v4           #columnIndex:I
    .end local v12           #value:Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-eqz v14, :cond_7

    .line 579
    const/4 v9, 0x0

    goto :goto_0

    .line 581
    :cond_7
    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 582
    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$308(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    goto :goto_0

    .line 585
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #mc:Landroid/database/MatrixCursor;
    .end local v10           #row:[Ljava/lang/Object;
    :cond_8
    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$408(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    .line 586
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static invalidateAllCachesForTest()V
    .locals 3

    .prologue
    .line 759
    sget-object v2, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCacheLru;

    .line 760
    .local v0, cache:Lcom/android/email/provider/ContentCacheLru;
    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru;->invalidate()V

    goto :goto_0

    .line 762
    .end local v0           #cache:Lcom/android/email/provider/ContentCacheLru;
    :cond_0
    return-void
.end method

.method public static declared-synchronized notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 725
    const-class v0, Lcom/android/email/provider/ContentCacheLru;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 3
    .parameter "id"
    .parameter "values"
    .parameter "wasLocked"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 642
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 643
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 646
    :cond_0
    if-eqz p2, :cond_5

    .line 647
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 648
    .local v1, cursor:Landroid/database/MatrixCursor;
    if-eqz v1, :cond_4

    .line 649
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 652
    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 653
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :goto_0
    sget-object v2, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 662
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_2
    if-eqz p3, :cond_3

    .line 666
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->subtract(Ljava/lang/Object;)I

    .line 668
    :cond_3
    return-void

    .line 655
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    :cond_4
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 658
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :cond_5
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;
    .locals 2
    .parameter "id"

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$TokenList;->add(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;

    move-result-object v0

    .line 447
    .local v0, token:Lcom/android/email/provider/ContentCacheLru$CacheToken;
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_0
    monitor-exit p0

    return-object v0

    .line 446
    .end local v0           #token:Lcom/android/email/provider/ContentCacheLru$CacheToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    if-ne p2, v0, :cond_1

    .line 523
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CachedCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 525
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    .prologue
    .line 674
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/provider/ContentCacheLru;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "operation"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$708(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    .line 693
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 695
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->add(Ljava/lang/Object;)V

    .line 599
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$TokenList;->invalidateTokens(Ljava/lang/String;)I

    move-result v0

    .line 600
    .local v0, count:I
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    .line 597
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 478
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru;->putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;
    .locals 3
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$208(Lcom/android/email/provider/ContentCacheLru$Statistics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 505
    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1
    :goto_0
    monitor-exit p0

    return-object p1

    .line 491
    .restart local p1
    :cond_1
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    if-ne p3, v1, :cond_4

    .line 492
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 496
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 497
    .local v0, existingCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 498
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 505
    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z

    move-object p1, v1

    goto :goto_0

    .end local v0           #existingCursor:Landroid/database/Cursor;
    :cond_4
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 505
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method recordQueryTime(Landroid/database/Cursor;J)V
    .locals 2
    .parameter "c"
    .parameter "nanoTime"

    .prologue
    .line 708
    instance-of v0, p1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$914(Lcom/android/email/provider/ContentCacheLru$Statistics;J)J

    .line 710
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1008(Lcom/android/email/provider/ContentCacheLru$Statistics;)J

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1114(Lcom/android/email/provider/ContentCacheLru$Statistics;J)J

    .line 714
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1208(Lcom/android/email/provider/ContentCacheLru$Statistics;)J

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 613
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "id"
    .parameter "values"

    .prologue
    .line 625
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
