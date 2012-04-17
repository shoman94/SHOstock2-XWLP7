.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 145
    .local v0, checked:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 147
    return-void

    :cond_0
    move v1, v3

    .line 145
    goto :goto_0

    :cond_1
    move v2, v3

    .line 146
    goto :goto_1
.end method
