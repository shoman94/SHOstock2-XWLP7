.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$descriptions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    .line 302
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    .line 303
    .local v5, origPri:I
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 305
    .local v1, nextTime:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 306
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/TaskDescription;

    .line 307
    .local v6, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 309
    .local v3, now:J
    const-wide/16 v7, 0x0

    add-long/2addr v1, v7

    .line 310
    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    .line 312
    sub-long v7, v1, v3

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 328
    .end local v3           #now:J
    .end local v6           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 329
    const/4 v7, 0x0

    return-object v7

    .line 320
    .restart local v3       #now:J
    .restart local v6       #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_2
    monitor-enter v6

    .line 321
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    :goto_2
    :try_start_3
    monitor-exit v6

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 313
    :catch_0
    move-exception v7

    goto :goto_1

    .line 324
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 286
    .local v0, td:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/RecentTasksLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$1$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader$1;Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
