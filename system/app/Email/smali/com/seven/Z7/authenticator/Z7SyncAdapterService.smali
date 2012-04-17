.class public Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.super Landroid/app/Service;
.source "Z7SyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceWork;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceWork2;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceWork;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceMSN;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceMSN;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceGmail;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceGmail2;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceGmail;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceYahoo;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceYahoo2;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceYahoo;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterServiceAOL;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterServiceAOL;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterService;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$CalendarSyncAdapterService;,
        Lcom/seven/Z7/authenticator/Z7SyncAdapterService$IMSyncAdapterService;
    }
.end annotation


# instance fields
.field final contentId:I

.field private sSyncAdapter:Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;

.field private sSyncAdapterLock:Ljava/lang/Object;

.field private syncLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "contentId"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->syncLock:Ljava/lang/Object;

    .line 43
    iput p1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->contentId:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->syncLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 117
    const-string v0, "SyncAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ACTION_AUTHENTICATOR_INTENT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->sSyncAdapter:Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;

    invoke-virtual {v0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    iget-object v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->sSyncAdapter:Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;

    invoke-virtual {p0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;-><init>(Lcom/seven/Z7/authenticator/Z7SyncAdapterService;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;->sSyncAdapter:Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncThread;

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const-string v0, "SyncAdapterService"

    const-string v1, "***** SyncAdapter Service *****: onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
