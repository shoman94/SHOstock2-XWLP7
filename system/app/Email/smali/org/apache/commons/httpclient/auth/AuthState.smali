.class public Lorg/apache/commons/httpclient/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field private authAttempted:Z

.field private authRequested:Z

.field private authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

.field private preemptive:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    .line 79
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    .line 87
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    .line 97
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Auth state: auth requested ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 270
    const-string v1, "]; auth attempted ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 274
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "]; auth scheme ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v1, "]; realm ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    :cond_0
    const-string v1, "] preemptive ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 290
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
