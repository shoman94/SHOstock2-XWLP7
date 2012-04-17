.class public abstract Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.super Ljava/lang/Object;
.source "RFC2617Scheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# instance fields
.field private params:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 91
    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 167
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
