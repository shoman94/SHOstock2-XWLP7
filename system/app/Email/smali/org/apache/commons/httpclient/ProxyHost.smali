.class public Lorg/apache/commons/httpclient/ProxyHost;
.super Lorg/apache/commons/httpclient/HttpHost;
.source "ProxyHost.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 98
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 100
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/ProxyHost;

    .line 123
    .local v0, copy:Lorg/apache/commons/httpclient/ProxyHost;
    return-object v0
.end method
