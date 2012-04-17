.class public final Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;
.super Ljava/lang/Object;
.source "AuthChallengeProcessor.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method
