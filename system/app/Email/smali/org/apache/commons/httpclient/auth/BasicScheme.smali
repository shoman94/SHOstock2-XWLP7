.class public Lorg/apache/commons/httpclient/auth/BasicScheme;
.super Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.source "BasicScheme.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private complete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/apache/commons/httpclient/auth/BasicScheme;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/BasicScheme;->complete:Z

    .line 112
    return-void
.end method


# virtual methods
.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "basic"

    return-object v0
.end method
