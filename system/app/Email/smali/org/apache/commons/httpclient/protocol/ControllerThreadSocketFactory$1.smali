.class final Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;
.super Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
.source "ControllerThreadSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$localAddress:Ljava/net/InetAddress;

.field final synthetic val$localPort:I

.field final synthetic val$port:I

.field final synthetic val$socketfactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# virtual methods
.method public doit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->val$socketfactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->val$host:Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->val$port:I

    iget-object v3, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->val$localAddress:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->val$localPort:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;->setSocket(Ljava/net/Socket;)V

    .line 139
    return-void
.end method
