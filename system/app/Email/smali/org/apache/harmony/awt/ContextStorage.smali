.class public final Lorg/apache/harmony/awt/ContextStorage;
.super Ljava/lang/Object;
.source "ContextStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/awt/ContextStorage$ContextLock;
    }
.end annotation


# static fields
.field private static final globalContext:Lorg/apache/harmony/awt/ContextStorage;


# instance fields
.field private final contextLock:Ljava/lang/Object;

.field private dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

.field private volatile shutdownPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/apache/harmony/awt/ContextStorage;

    invoke-direct {v0}, Lorg/apache/harmony/awt/ContextStorage;-><init>()V

    sput-object v0, Lorg/apache/harmony/awt/ContextStorage;->globalContext:Lorg/apache/harmony/awt/ContextStorage;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending:Z

    .line 40
    new-instance v0, Lorg/apache/harmony/awt/ContextStorage$ContextLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/awt/ContextStorage$ContextLock;-><init>(Lorg/apache/harmony/awt/ContextStorage;Lorg/apache/harmony/awt/ContextStorage$ContextLock;)V

    iput-object v0, p0, Lorg/apache/harmony/awt/ContextStorage;->contextLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static getContextLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->contextLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->globalContext:Lorg/apache/harmony/awt/ContextStorage;

    return-object v0
.end method

.method public static getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    return-object v0
.end method

.method public static setDTK(Lorg/apache/harmony/awt/datatransfer/DTK;)V
    .locals 1
    .parameter "dtk"

    .prologue
    .line 55
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    .line 56
    return-void
.end method

.method public static shutdownPending()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getCurrentContext()Lorg/apache/harmony/awt/ContextStorage;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending:Z

    return v0
.end method
