.class Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityPolicyArrayAdaptor"
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
    .line 1469
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageCompose$AccountInfoItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 1470
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1471
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1476
    move-object v7, p2

    .line 1477
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 1480
    .local v3, item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    if-nez v7, :cond_0

    .line 1481
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1482
    .local v4, li:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f04

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1486
    .end local v4           #li:Landroid/view/LayoutInflater;
    :cond_0
    if-eqz v3, :cond_4

    .line 1487
    const/high16 v8, 0x7f10

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    const v8, 0x7f100003

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1490
    .local v6, titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    if-eqz v6, :cond_1

    .line 1497
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getTypeMsg()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1498
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1499
    .local v5, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1500
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, 0x7f0b002e

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1502
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1504
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    .end local v5           #sb:Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    const v8, 0x7f100004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1515
    .local v0, addressView:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    const v8, 0x7f100001

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1518
    .local v2, image:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    const v8, 0x7f100002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1521
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f08005c

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1522
    const v8, 0x7f0201d2

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1531
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/view/View;
    .end local v6           #titleView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :goto_1
    return-object v7

    .line 1506
    .restart local v6       #titleView:Landroid/widget/TextView;
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1524
    .restart local v0       #addressView:Landroid/widget/TextView;
    .restart local v1       #icon:Landroid/widget/ImageView;
    .restart local v2       #image:Landroid/view/View;
    :cond_3
    const v8, 0x7f02019a

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1531
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/view/View;
    .end local v6           #titleView:Landroid/widget/TextView;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_1
.end method
