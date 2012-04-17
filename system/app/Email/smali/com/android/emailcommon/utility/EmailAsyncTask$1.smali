.class final Lcom/android/emailcommon/utility/EmailAsyncTask$1;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 239
    iput-object p2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method
