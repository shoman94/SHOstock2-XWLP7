.class public Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracker"
.end annotation


# instance fields
.field private final mTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method private add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelOthers(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, current:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v5

    .line 79
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    iget-object v4, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 81
    .local v2, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 83
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    .end local v3           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 86
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 87
    .restart local v2       #task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v4, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v2           #task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    return-void
.end method

.method public cancellAllInterrupt()V
    .locals 4

    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 66
    .local v1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    goto :goto_0

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 68
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    return-void
.end method

.method containsTaskForTest(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTaskCountForTest()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
