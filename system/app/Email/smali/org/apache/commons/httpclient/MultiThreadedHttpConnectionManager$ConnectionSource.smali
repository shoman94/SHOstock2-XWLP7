.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionSource"
.end annotation


# instance fields
.field public connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field public hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
