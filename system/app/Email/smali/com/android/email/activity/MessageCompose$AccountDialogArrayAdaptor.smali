.class Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDialogArrayAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7528
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageCompose$AccountInfoItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 7529
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7531
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 7536
    move-object v7, p2

    .line 7537
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 7540
    .local v3, item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    if-nez v7, :cond_0

    .line 7541
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 7542
    .local v4, li:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f04

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 7546
    .end local v4           #li:Landroid/view/LayoutInflater;
    :cond_0
    if-eqz v3, :cond_4

    .line 7547
    const/high16 v8, 0x7f10

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 7549
    const v8, 0x7f100003

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 7550
    .local v6, titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7556
    if-eqz v6, :cond_1

    .line 7557
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getTypeMsg()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 7558
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7559
    .local v5, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7560
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, 0x7f0b002e

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7562
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7564
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7574
    .end local v5           #sb:Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    const v8, 0x7f100004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7575
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7577
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7578
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7583
    :goto_1
    const v8, 0x7f100001

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7584
    .local v2, image:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountColorResID()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7586
    const v8, 0x7f100002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7587
    .local v1, icon:Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7594
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/view/View;
    .end local v6           #titleView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :goto_2
    return-object v7

    .line 7566
    .restart local v6       #titleView:Landroid/widget/TextView;
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7580
    .restart local v0       #addressView:Landroid/widget/TextView;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7594
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v6           #titleView:Landroid/widget/TextView;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_2
.end method
