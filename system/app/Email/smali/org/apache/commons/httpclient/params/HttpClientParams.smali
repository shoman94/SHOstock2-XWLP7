.class public Lorg/apache/commons/httpclient/params/HttpClientParams;
.super Lorg/apache/commons/httpclient/params/HttpMethodParams;
.source "HttpClientParams.java"


# static fields
.field private static final PROTOCOL_STRICTNESS_PARAMETERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http.protocol.reject-relative-redirect"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http.protocol.allow-circular-redirects"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/params/HttpClientParams;->PROTOCOL_STRICTNESS_PARAMETERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 0
    .parameter "defaults"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getConnectionManagerClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 210
    const-string v0, "http.connection-manager.class"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public setConnectionManagerClass(Ljava/lang/Class;)V
    .locals 1
    .parameter "clazz"

    .prologue
    .line 224
    const-string v0, "http.connection-manager.class"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    return-void
.end method
