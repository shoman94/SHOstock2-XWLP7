.class public Lorg/apache/james/mime4j/util/SimpleTempStorage;
.super Lorg/apache/james/mime4j/util/TempStorage;
.source "SimpleTempStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/SimpleTempStorage$1;,
        Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;,
        Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private random:Ljava/util/Random;

.field private rootPath:Lorg/apache/james/mime4j/util/TempPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/util/TempStorage;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->random:Ljava/util/Random;

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;

    .line 53
    return-void
.end method


# virtual methods
.method public getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/util/TempPath;

    return-object v0
.end method
