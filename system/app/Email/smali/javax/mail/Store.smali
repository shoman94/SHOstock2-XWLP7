.class public abstract Ljavax/mail/Store;
.super Ljavax/mail/Service;
.source "Store.java"


# instance fields
.field private storeListeners:Ljava/util/ArrayList;


# virtual methods
.method fireNotification(Ljavax/mail/event/StoreEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/StoreListener;

    .line 187
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 191
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/StoreListener;->notification(Ljavax/mail/event/StoreEvent;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 194
    :cond_0
    return-void
.end method

.method public abstract getDefaultFolder()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method protected notifyStoreListeners(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Ljavax/mail/event/StoreEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/StoreEvent;-><init>(Ljavax/mail/Store;ILjava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Ljavax/mail/Store;->fireNotification(Ljavax/mail/event/StoreEvent;)V

    .line 174
    return-void
.end method
