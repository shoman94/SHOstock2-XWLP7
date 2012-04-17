.class public Lcom/sec/android/app/contacts/activities/SendContactOption;
.super Landroid/app/Activity;
.source "SendContactOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SendContactOption;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 44
    :cond_0
    const v2, 0x7f0a0233

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->setTitle(I)V

    .line 45
    const v2, 0x7f0400b7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->setContentView(I)V

    .line 46
    const v2, 0x7f0d01f6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, button:Landroid/widget/Button;
    const v2, 0x7f0a0237

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 48
    new-instance v2, Lcom/sec/android/app/contacts/activities/SendContactOption$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SendContactOption$1;-><init>(Lcom/sec/android/app/contacts/activities/SendContactOption;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SendContactOption;->finish()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
