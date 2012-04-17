.class Lcom/seven/Z7/common/Z7LocalFileHandler$1;
.super Ljava/lang/Object;
.source "Z7LocalFileHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/common/Z7LocalFileHandler;->publish(Ljava/util/logging/LogRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/common/Z7LocalFileHandler;


# direct methods
.method constructor <init>(Lcom/seven/Z7/common/Z7LocalFileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$1;->this$0:Lcom/seven/Z7/common/Z7LocalFileHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$1;->this$0:Lcom/seven/Z7/common/Z7LocalFileHandler;

    invoke-virtual {v0}, Lcom/seven/Z7/common/Z7LocalFileHandler;->findNextGeneration()V

    .line 547
    const/4 v0, 0x0

    return-object v0
.end method
