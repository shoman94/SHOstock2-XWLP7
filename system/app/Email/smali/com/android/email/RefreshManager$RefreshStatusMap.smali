.class Lcom/android/email/RefreshManager$RefreshStatusMap;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshStatusMap"
.end annotation


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/RefreshManager$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/RefreshManager$RefreshStatusMap;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/RefreshManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/email/RefreshManager$RefreshStatusMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(J)Lcom/android/email/RefreshManager$Status;
    .locals 3
    .parameter "id"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/email/RefreshManager$RefreshStatusMap;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/RefreshManager$Status;

    .line 163
    .local v0, s:Lcom/android/email/RefreshManager$Status;
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/email/RefreshManager$Status;

    .end local v0           #s:Lcom/android/email/RefreshManager$Status;
    invoke-direct {v0}, Lcom/android/email/RefreshManager$Status;-><init>()V

    .line 165
    .restart local v0       #s:Lcom/android/email/RefreshManager$Status;
    iget-object v1, p0, Lcom/android/email/RefreshManager$RefreshStatusMap;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v0
.end method

.method public isRefreshingAny()Z
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/email/RefreshManager$RefreshStatusMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/RefreshManager$Status;

    .line 172
    .local v1, s:Lcom/android/email/RefreshManager$Status;
    invoke-virtual {v1}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 176
    .end local v1           #s:Lcom/android/email/RefreshManager$Status;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
