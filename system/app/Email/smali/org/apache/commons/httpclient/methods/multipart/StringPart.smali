.class public Lorg/apache/commons/httpclient/methods/multipart/StringPart;
.super Lorg/apache/commons/httpclient/methods/multipart/PartBase;
.source "StringPart.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method
