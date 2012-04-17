.class public Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
.super Ljava/lang/Object;
.source "MultipartRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field private static MULTIPART_CHARS:[B

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->log:Lorg/apache/commons/logging/Log;

    .line 138
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    return-void
.end method
