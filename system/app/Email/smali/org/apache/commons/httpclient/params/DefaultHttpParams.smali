.class public Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.super Ljava/lang/Object;
.source "DefaultHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/httpclient/params/HttpParams;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# instance fields
.field private defaults:Lorg/apache/commons/httpclient/params/HttpParams;

.field private parameters:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    .line 88
    new-instance v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 1
    .parameter "defaults"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 129
    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 144
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 146
    return-void
.end method

.method public static getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/params/HttpParamsFactory;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;

    .line 384
    .local v0, clone:Lorg/apache/commons/httpclient/params/DefaultHttpParams;
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 390
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 392
    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 325
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    .line 181
    .local v0, param:Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 187
    .end local v0           #param:Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 207
    :goto_0
    monitor-exit p0

    return-object v0

    .line 197
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
