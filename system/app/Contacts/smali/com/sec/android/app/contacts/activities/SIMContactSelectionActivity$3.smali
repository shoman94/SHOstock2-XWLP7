.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;
.super Landroid/os/Handler;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 841
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0a005a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0a0283

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
