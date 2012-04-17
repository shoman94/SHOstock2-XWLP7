.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;
.source "InputStreamRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method
