.class public Lcom/seven/Z7/app/ErrorActivity;
.super Landroid/app/Activity;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getErrorDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Dialog;
    .locals 8
    .parameter "title"
    .parameter "text"
    .parameter "action"

    .prologue
    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 65
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f04008e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, view:Landroid/view/View;
    const v5, 0x7f10023a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, textTextView:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 70
    :cond_0
    const v5, 0x7f08049a

    invoke-virtual {p0, v5}, Lcom/seven/Z7/app/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 73
    :cond_2
    const v5, 0x7f08049b

    invoke-virtual {p0, v5}, Lcom/seven/Z7/app/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 77
    :cond_3
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0804b1

    invoke-virtual {p0, v6}, Lcom/seven/Z7/app/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/seven/Z7/app/ErrorActivity$1;

    invoke-direct {v7, p0, p3}, Lcom/seven/Z7/app/ErrorActivity$1;-><init>(Lcom/seven/Z7/app/ErrorActivity;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 100
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 102
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/seven/Z7/app/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    .line 27
    iget-object v2, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 28
    const-string v2, "ErrorActivity"

    const-string v3, "Bundle contains no data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, k:Ljava/lang/String;
    const-string v2, "ErrorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorBundle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 37
    .end local v1           #k:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/seven/Z7/app/ErrorActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, errDialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    .line 45
    :pswitch_0
    iget-object v4, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    const-string v5, "subject"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/seven/Z7/app/ErrorActivity;->mData:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, action:I
    invoke-direct {p0, v3, v2, v0}, Lcom/seven/Z7/app/ErrorActivity;->getErrorDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Dialog;

    move-result-object v1

    .line 49
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/ErrorActivity;->removeDialog(I)V

    .line 60
    invoke-virtual {p0}, Lcom/seven/Z7/app/ErrorActivity;->finish()V

    .line 61
    return-void
.end method
