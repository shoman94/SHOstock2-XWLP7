.class Lcom/android/email/activity/SelectGroup$4;
.super Ljava/lang/Object;
.source "SelectGroup.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SelectGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/SelectGroup;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SelectGroup;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/email/activity/SelectGroup$4;->this$0:Lcom/android/email/activity/SelectGroup;

    iput-object p2, p0, Lcom/android/email/activity/SelectGroup$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 531
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 541
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 551
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$4;->this$0:Lcom/android/email/activity/SelectGroup;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/email/activity/SelectGroup;->isExistGroup(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/email/activity/SelectGroup;->access$300(Lcom/android/email/activity/SelectGroup;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$4;->this$0:Lcom/android/email/activity/SelectGroup;

    #getter for: Lcom/android/email/activity/SelectGroup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/SelectGroup;->access$400(Lcom/android/email/activity/SelectGroup;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
