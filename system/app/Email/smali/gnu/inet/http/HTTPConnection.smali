.class public Lgnu/inet/http/HTTPConnection;
.super Ljava/lang/Object;
.source "HTTPConnection.java"


# static fields
.field private static final userAgent:Ljava/lang/String;


# instance fields
.field private final connectionListeners:Ljava/util/List;

.field protected final connectionTimeout:I

.field protected cookieManager:Lgnu/inet/http/CookieManager;

.field protected final hostname:Ljava/lang/String;

.field protected in:Ljava/io/InputStream;

.field protected majorVersion:I

.field protected minorVersion:I

.field private nonceCounts:Ljava/util/Map;

.field protected out:Ljava/io/OutputStream;

.field protected final port:I

.field protected proxyHostname:Ljava/lang/String;

.field protected proxyPort:I

.field private final requestListeners:Ljava/util/List;

.field protected final secure:Z

.field protected socket:Ljava/net/Socket;

.field protected final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lgnu/inet/http/HTTPConnection;->initUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/inet/http/HTTPConnection;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 230
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZII)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    .line 245
    iput p2, p0, Lgnu/inet/http/HTTPConnection;->port:I

    .line 246
    iput-boolean p3, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    .line 247
    iput p4, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    .line 248
    iput p5, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    iput v0, p0, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    .line 252
    return-void
.end method

.method private static initUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "inetlib/1.1 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    const-string v0, "inetlib/1.1"

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {p0, v1}, Lgnu/inet/http/HTTPConnection;->fireConnectionEvent(I)V

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lgnu/inet/http/HTTPConnection;->fireConnectionEvent(I)V

    throw v0
.end method

.method protected closeConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 504
    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    .line 511
    :cond_0
    return-void

    .line 508
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    throw v0
.end method

.method protected fireConnectionEvent(I)V
    .locals 4
    .parameter

    .prologue
    .line 587
    new-instance v1, Lgnu/inet/http/event/ConnectionEvent;

    invoke-direct {v1, p0, p1}, Lgnu/inet/http/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 589
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lgnu/inet/http/event/ConnectionListener;

    .line 592
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 593
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 594
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 599
    :pswitch_0
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/ConnectionListener;->connectionClosed(Lgnu/inet/http/event/ConnectionEvent;)V

    goto :goto_1

    .line 603
    :cond_0
    return-void

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected fireRequestEvent(ILgnu/inet/http/Request;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 623
    new-instance v1, Lgnu/inet/http/event/RequestEvent;

    invoke-direct {v1, p0, p1, p2}, Lgnu/inet/http/event/RequestEvent;-><init>(Ljava/lang/Object;ILgnu/inet/http/Request;)V

    .line 625
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    monitor-enter v2

    .line 627
    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lgnu/inet/http/event/RequestListener;

    .line 628
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 629
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 632
    packed-switch p1, :pswitch_data_0

    .line 630
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 635
    :pswitch_0
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestCreated(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    .line 638
    :pswitch_1
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestSent(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    .line 641
    :pswitch_2
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestSent(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    .line 645
    :cond_0
    return-void

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCookieManager()Lgnu/inet/http/CookieManager;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->getSocket()Ljava/net/Socket;

    .line 481
    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method getNonceCount(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->getSocket()Ljava/net/Socket;

    .line 491
    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_3

    .line 420
    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    .line 421
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    .line 422
    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->isUsingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    .line 425
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    .line 427
    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    .line 428
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 429
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 431
    iget v2, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    if-lez v2, :cond_4

    .line 433
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    iget v4, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 439
    :goto_0
    iget v2, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    if-lez v2, :cond_1

    .line 441
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    iget v3, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 443
    :cond_1
    iget-boolean v2, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v2, :cond_2

    .line 447
    :try_start_0
    new-instance v2, Lgnu/inet/util/EmptyX509TrustManager;

    invoke-direct {v2}, Lgnu/inet/util/EmptyX509TrustManager;-><init>()V

    .line 448
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 449
    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 450
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 451
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 452
    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 455
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TLSv1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SSLv3"

    aput-object v3, v1, v2

    .line 456
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 458
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 459
    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_2
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    .line 467
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    .line 468
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    .line 469
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    .line 471
    :cond_3
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    return-object v0

    .line 437
    :cond_4
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getURI()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 519
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_2

    .line 524
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_0

    .line 526
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 538
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_1
    const-string v0, "http://"

    goto :goto_0

    .line 532
    :cond_2
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    .line 534
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method incrementNonce(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lgnu/inet/http/HTTPConnection;->getNonceCount(Ljava/lang/String;)I

    move-result v0

    .line 560
    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    .line 564
    :cond_0
    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return-void
.end method

.method public isUsingProxy()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRequest(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/http/Request;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method must have non-zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 358
    :cond_2
    const-string p2, "/"

    .line 360
    :cond_3
    new-instance v2, Lgnu/inet/http/Request;

    invoke-direct {v2, p0, p1, p2}, Lgnu/inet/http/Request;-><init>(Lgnu/inet/http/HTTPConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v3, 0x1bb

    if-ne v0, v3, :cond_5

    :cond_4
    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-nez v0, :cond_6

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v3, 0x50

    if-eq v0, v3, :cond_6

    .line 364
    :cond_5
    const-string v0, "Host"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    const-string v0, "User-Agent"

    sget-object v3, Lgnu/inet/http/HTTPConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "Accept-Encoding"

    const-string v3, "chunked;q=1.0, gzip;q=0.9, deflate;q=0.8, identity;q=0.6, *;q=0"

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    if-eqz v0, :cond_8

    .line 377
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    iget-boolean v4, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    invoke-interface {v0, v3, v4, p2}, Lgnu/inet/http/CookieManager;->getCookies(Ljava/lang/String;ZLjava/lang/String;)[Lgnu/inet/http/Cookie;

    move-result-object v3

    .line 378
    if-eqz v3, :cond_8

    array-length v0, v3

    if-lez v0, :cond_8

    .line 380
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    const-string v0, "$Version=1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 382
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_7

    .line 384
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lgnu/inet/http/Cookie;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_6
    const-string v0, "Host"

    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_7
    const-string v0, "Cookie"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_8
    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    .line 392
    return-object v2
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    .line 316
    iput p2, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    .line 317
    return-void
.end method
