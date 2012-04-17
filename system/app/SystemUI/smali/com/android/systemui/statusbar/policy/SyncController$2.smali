.class Lcom/android/systemui/statusbar/policy/SyncController$2;
.super Landroid/os/AsyncTask;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SyncController;->onClick(Z)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SyncController;

.field final synthetic val$buttonStatus:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SyncController;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->this$0:Lcom/android/systemui/statusbar/policy/SyncController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->val$buttonStatus:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->val$sync:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->val$buttonStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->val$sync:Z

    if-nez v0, :cond_0

    .line 114
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SyncController$2;->val$sync:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 121
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SyncController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 127
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SyncController$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
