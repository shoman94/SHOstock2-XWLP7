.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 612
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
