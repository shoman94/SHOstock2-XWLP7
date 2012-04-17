.class Lcom/android/mms/Synchronizer$SyncThread;
.super Ljava/lang/Object;
.source "Synchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/Synchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "_context"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/mms/Synchronizer$SyncThread;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    const-string v1, "Mms/Synchronizer"

    const-string v2, "dbSync()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/android/mms/Synchronizer$SyncThread;->mContext:Landroid/content/Context;

    #calls: Lcom/android/mms/Synchronizer;->dbSync(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/android/mms/Synchronizer;->access$000(Landroid/content/Context;)V

    .line 34
    const-string v1, "Mms/Synchronizer"

    const-string v2, "dbSync()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
