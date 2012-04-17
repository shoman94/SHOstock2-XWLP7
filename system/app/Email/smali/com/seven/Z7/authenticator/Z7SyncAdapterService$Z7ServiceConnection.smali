.class final Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;
.super Ljava/lang/Object;
.source "Z7SyncAdapterService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Z7ServiceConnection"
.end annotation


# instance fields
.field private account:I

.field private contentId:I

.field private forcedSync:Z

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/seven/Z7/common/IZ7ServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/seven/Z7/common/IZ7Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Object;Z)V
    .locals 1
    .parameter "account"
    .parameter "contentId"
    .parameter "lock"
    .parameter "forced"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->forcedSync:Z

    .line 190
    iput p1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->account:I

    .line 191
    iput p2, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->contentId:I

    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->lock:Ljava/lang/ref/WeakReference;

    .line 193
    iput-boolean p4, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->forcedSync:Z

    .line 194
    return-void
.end method

.method private bindService(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7Service;
    .locals 2
    .parameter "binder"

    .prologue
    .line 219
    invoke-static {p1}, Lcom/seven/Z7/common/IZ7Service$Stub;->asInterface(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    .line 220
    .local v0, service:Lcom/seven/Z7/common/IZ7Service;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->service:Ljava/lang/ref/WeakReference;

    .line 221
    return-object v0
.end method

.method private createListener()Lcom/seven/Z7/common/IZ7ServiceCallback;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;

    iget v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->account:I

    iget v2, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->contentId:I

    iget-object v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->lock:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$SyncCallbackListener;-><init>(IILjava/lang/ref/WeakReference;)V

    .line 214
    .local v0, listener:Lcom/seven/Z7/common/IZ7ServiceCallback;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->listener:Ljava/lang/ref/WeakReference;

    .line 215
    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 197
    const-string v3, "Z7ServiceConnection"

    const-string v4, "onServiceConnected z7service Component"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p2}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->bindService(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    .line 199
    .local v2, service:Lcom/seven/Z7/common/IZ7Service;
    invoke-direct {p0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->createListener()Lcom/seven/Z7/common/IZ7ServiceCallback;

    move-result-object v1

    .line 202
    .local v1, listener:Lcom/seven/Z7/common/IZ7ServiceCallback;
    :try_start_0
    invoke-interface {v2}, Lcom/seven/Z7/common/IZ7Service;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->forcedSync:Z

    if-nez v3, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/seven/Z7/common/IZ7Service;->registerCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;Lcom/seven/Z7/common/Z7CallbackFilter;)V

    .line 206
    iget v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->account:I

    iget v4, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->contentId:I

    invoke-interface {v2, v3, v4}, Lcom/seven/Z7/common/IZ7Service;->checkContentUpdates(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Z7ServiceConnection"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 225
    const-string v0, "Z7ServiceConnection"

    const-string v1, "onServiceDisconnected() Component"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 227
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seven/Z7/common/IZ7Service;

    .line 232
    .local v2, s:Lcom/seven/Z7/common/IZ7Service;
    iget-object v3, p0, Lcom/seven/Z7/authenticator/Z7SyncAdapterService$Z7ServiceConnection;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/Z7/common/IZ7ServiceCallback;

    .line 233
    .local v1, l:Lcom/seven/Z7/common/IZ7ServiceCallback;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v2, v1}, Lcom/seven/Z7/common/IZ7Service;->unregisterCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1           #l:Lcom/seven/Z7/common/IZ7ServiceCallback;
    .end local v2           #s:Lcom/seven/Z7/common/IZ7Service;
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Z7ServiceConnection"

    const-string v4, "Releasing service connection failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
