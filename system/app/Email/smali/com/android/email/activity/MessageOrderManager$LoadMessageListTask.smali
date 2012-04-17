.class Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;
.super Landroid/os/AsyncTask;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;-><init>(Lcom/android/email/activity/MessageOrderManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 2
    .parameter "params"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #calls: Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/email/activity/MessageOrderManager;->access$300(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;

    move-result-object v0

    .line 349
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 351
    const/4 v0, 0x0

    .line 353
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageOrderManager;->onCursorOpenDone(Landroid/database/Cursor;)V

    .line 359
    return-void
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #getter for: Lcom/android/email/activity/MessageOrderManager;->mClosed:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$000(Lcom/android/email/activity/MessageOrderManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 365
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->onCancelled()V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageOrderManager;->onCursorOpenDone(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
