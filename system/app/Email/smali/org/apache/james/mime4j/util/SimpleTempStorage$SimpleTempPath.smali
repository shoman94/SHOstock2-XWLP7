.class Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/TempPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempPath"
.end annotation


# instance fields
.field private path:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V

    return-void
.end method
