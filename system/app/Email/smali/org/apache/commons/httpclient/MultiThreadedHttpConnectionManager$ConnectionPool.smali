.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionPool"
.end annotation


# instance fields
.field private freeConnections:Ljava/util/LinkedList;

.field private idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

.field private final mapHosts:Ljava/util/Map;

.field private numConnections:I

.field final synthetic this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

.field private waitingThreads:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    .line 1027
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    .line 1034
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    .line 1036
    new-instance v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V

    return-void
.end method

.method private declared-synchronized deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5
    .parameter "connection"

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    #calls: Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {v2, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 1297
    .local v0, connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reclaiming connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1303
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 1305
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 1307
    .local v1, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1309
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 1311
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 1313
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1317
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    monitor-exit p0

    return-void

    .line 1295
    .end local v0           #connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v1           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized closeIdleConnections(J)V
    .locals 1
    .parameter "idleTimeout"

    .prologue
    .line 1278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    monitor-exit p0

    return-void

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteClosedConnections()V
    .locals 3

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1254
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 1258
    .local v0, conn:Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1262
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1252
    .end local v0           #conn:Lorg/apache/commons/httpclient/HttpConnection;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1268
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .parameter "conn"

    .prologue
    .line 1432
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    #calls: Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {v3, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v1

    .line 1434
    .local v1, connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1436
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Freeing connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1440
    :cond_0
    monitor-enter p0

    .line 1442
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    #getter for: Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z
    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 1451
    monitor-exit p0

    .line 1504
    :goto_0
    return-void

    .line 1455
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    .line 1460
    .local v2, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1462
    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v3, :cond_2

    .line 1466
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 1470
    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 1474
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1482
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    move-object v3, v0

    #calls: Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    .line 1484
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    if-nez v3, :cond_3

    .line 1488
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 1492
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 1498
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->add(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1500
    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V

    .line 1502
    monitor-exit p0

    goto :goto_0

    .end local v2           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .locals 3
    .parameter "hostConfiguration"
    .parameter "create"

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1178
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .line 1182
    .local v0, listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1186
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .end local v0           #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    .line 1188
    .restart local v0       #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 1190
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1174
    .end local v0           #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1142
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    .line 1144
    .local v0, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 1146
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_0
    iget v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 1156
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    monitor-exit p0

    return-void

    .line 1142
    .end local v0           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 1358
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    monitor-exit p0

    return-void

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    .locals 5
    .parameter "hostPool"

    .prologue
    .line 1380
    monitor-enter p0

    const/4 v1, 0x0

    .line 1382
    .local v1, waitingThread:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :try_start_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1384
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying thread waiting on host pool, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1392
    :cond_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    .line 1394
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1414
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1416
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 1418
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    :cond_2
    monitor-exit p0

    return-void

    .line 1396
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1398
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1400
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "No-one waiting on host pool, notifying next waiting thread."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1404
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    .line 1406
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    iget-object v2, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1380
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1408
    :cond_5
    :try_start_2
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1410
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Notifying no-one, there are no waiting threads"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
