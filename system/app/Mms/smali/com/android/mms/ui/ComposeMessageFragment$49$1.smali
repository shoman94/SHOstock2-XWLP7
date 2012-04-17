.class Lcom/android/mms/ui/ComposeMessageFragment$49$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$49;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$49;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5269
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$49$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$49;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$49$1;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$49$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$49;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$49$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5273
    return-void
.end method
