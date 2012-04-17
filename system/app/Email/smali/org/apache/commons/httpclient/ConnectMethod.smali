.class public Lorg/apache/commons/httpclient/ConnectMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "ConnectMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private final targethost:Lorg/apache/commons/httpclient/HostConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    const-class v0, Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ConnectMethod;->targethost:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 98
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "CONNECT"

    return-object v0
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 4
    .parameter "conn"

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, connectionHeader:Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, "proxy-connection"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 346
    :cond_0
    if-nez v0, :cond_1

    .line 348
    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 352
    :cond_1
    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    sget-object v1, Lorg/apache/commons/httpclient/ConnectMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header encountered \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 368
    :cond_2
    const/4 v1, 0x0

    .line 372
    .end local v0           #connectionHeader:Lorg/apache/commons/httpclient/Header;
    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v1

    goto :goto_0
.end method
