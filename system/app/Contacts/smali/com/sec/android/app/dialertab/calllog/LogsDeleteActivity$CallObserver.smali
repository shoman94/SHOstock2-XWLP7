.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;
.super Landroid/database/ContentObserver;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 737
    const-string v0, "LogsDeleteActivity"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$802(Z)Z

    .line 741
    return-void
.end method
