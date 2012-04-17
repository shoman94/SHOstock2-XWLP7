.class public Lcom/android/email/syncnconnect/service/APIRequestQueue;
.super Ljava/lang/Object;
.source "APIRequestQueue.java"


# static fields
.field private static rqueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;


# instance fields
.field private mLastAPIExecuted:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/service/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->rqueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mLastAPIExecuted:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->rqueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->rqueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    .line 24
    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->rqueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/android/email/syncnconnect/service/Request;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final get()Lcom/android/email/syncnconnect/service/Request;
    .locals 5

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, req:Lcom/android/email/syncnconnect/service/Request;
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/syncnconnect/service/Request;

    move-object v1, v0

    .line 38
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    :cond_0
    monitor-exit v3

    .line 41
    return-object v1

    .line 40
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    .locals 3

    .prologue
    .line 60
    const-string v0, "APIRequestQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting LastAPIExecuted :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mLastAPIExecuted:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mLastAPIExecuted:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    return-object v0
.end method

.method public final length()I
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, queueLength:I
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    :cond_0
    monitor-exit v2

    .line 51
    return v0

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 3
    .parameter "lastAPIExecuted"

    .prologue
    .line 55
    const-string v0, "APIRequestQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting LastAPIExecuted :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/android/email/syncnconnect/service/APIRequestQueue;->mLastAPIExecuted:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    .line 57
    return-void
.end method
