.class Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$7;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;

.field final synthetic val$alternate:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$7;ZLcom/android/contacts/quickcontact/Action;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$alternate:Z

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v2, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$alternate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V
    invoke-static {v1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    .line 717
    return-void

    .line 710
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0a00fb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
