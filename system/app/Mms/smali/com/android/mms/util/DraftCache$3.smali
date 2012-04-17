.class Lcom/android/mms/util/DraftCache$3;
.super Ljava/lang/Object;
.source "DraftCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DraftCache;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DraftCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/util/DraftCache$3;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/util/DraftCache$3;->this$0:Lcom/android/mms/util/DraftCache;

    #calls: Lcom/android/mms/util/DraftCache;->rebuildCache()V
    invoke-static {v0}, Lcom/android/mms/util/DraftCache;->access$000(Lcom/android/mms/util/DraftCache;)V

    .line 102
    return-void
.end method
