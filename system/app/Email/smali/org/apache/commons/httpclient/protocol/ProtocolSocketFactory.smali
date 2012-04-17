.class public interface abstract Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
.super Ljava/lang/Object;
.source "ProtocolSocketFactory.java"


# virtual methods
.method public abstract createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
