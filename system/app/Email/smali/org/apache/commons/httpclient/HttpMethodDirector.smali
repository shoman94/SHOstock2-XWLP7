.class Lorg/apache/commons/httpclient/HttpMethodDirector;
.super Ljava/lang/Object;
.source "HttpMethodDirector.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Lorg/apache/commons/httpclient/HttpMethodDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method
