.class public Lorg/apache/commons/httpclient/methods/multipart/FilePart;
.super Lorg/apache/commons/httpclient/methods/multipart/PartBase;
.source "FilePart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 115
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method
