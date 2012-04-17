.class Lcom/android/email/provider/ContentCacheHashMap$Statistics;
.super Ljava/lang/Object;
.source "ContentCacheHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private hitTimes:J

.field private hits:J

.field private final mCache:Lcom/android/email/provider/ContentCacheHashMap;

.field private mCursorCount:I

.field private mHitCount:I

.field private mInvalidateCount:I

.field private mMissCount:I

.field private final mName:Ljava/lang/String;

.field private mOpCount:I

.field private mProjectionMissCount:I

.field private mStaleCount:I

.field private mTokenCount:I

.field private miss:J

.field private missTimes:J


# direct methods
.method constructor <init>(Lcom/android/email/provider/ContentCacheHashMap;)V
    .locals 3
    .parameter "cache"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 819
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    .line 789
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    .line 792
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mStaleCount:I

    .line 797
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mProjectionMissCount:I

    .line 800
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mInvalidateCount:I

    .line 803
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mOpCount:I

    .line 806
    iput-wide v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hits:J

    .line 808
    iput-wide v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hitTimes:J

    .line 810
    iput-wide v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->miss:J

    .line 812
    iput-wide v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->missTimes:J

    .line 815
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCursorCount:I

    .line 817
    iput v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mTokenCount:I

    .line 820
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    .line 821
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    #getter for: Lcom/android/email/provider/ContentCacheHashMap;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/provider/ContentCacheHashMap;->access$1200(Lcom/android/email/provider/ContentCacheHashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mName:Ljava/lang/String;

    .line 822
    return-void
.end method

.method static synthetic access$1014(Lcom/android/email/provider/ContentCacheHashMap$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->missTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->missTimes:J

    return-wide v0
.end method

.method static synthetic access$108(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 779
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mStaleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mStaleCount:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->miss:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->miss:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 779
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 779
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 779
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mProjectionMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mProjectionMissCount:I

    return v0
.end method

.method static synthetic access$608(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 779
    iget v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mInvalidateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mInvalidateCount:I

    return v0
.end method

.method static synthetic access$814(Lcom/android/email/provider/ContentCacheHashMap$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hitTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hitTimes:J

    return-wide v0
.end method

.method static synthetic access$908(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hits:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hits:J

    return-wide v0
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 845
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 849
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 853
    iget v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 854
    const-string v2, "No cache"

    .line 866
    :goto_0
    return-object v2

    .line 855
    :cond_0
    iget v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mProjectionMissCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    add-int v1, v2, v3

    .line 856
    .local v1, totalTries:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v3, "Cursors"

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCursorCount:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const-string v2, "Hits"

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    const-string v2, "Misses"

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mMissCount:I

    iget v4, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mProjectionMissCount:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    const-string v2, "Inval"

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mInvalidateCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    const-string v3, "Tokens"

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mTokenCount:I

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    const-string v2, "Hit%"

    iget v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mHitCount:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    const-string v2, "\nHit time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hitTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->hits:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    const-string v2, "Miss time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->missTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->miss:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 858
    :cond_1
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCacheHashMap;->size()I

    move-result v2

    goto :goto_1

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->mCache:Lcom/android/email/provider/ContentCacheHashMap;

    iget-object v2, v2, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->size()I

    move-result v2

    goto :goto_2
.end method
