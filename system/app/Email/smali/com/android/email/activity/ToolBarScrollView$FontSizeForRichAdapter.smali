.class public Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ToolBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontSizeForRichAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/ToolBarScrollView;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 574
    move-object v3, p2

    .line 575
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 576
    iget-object v5, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/ToolBarScrollView;->access$1100(Lcom/android/email/activity/ToolBarScrollView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 578
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f04005a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 580
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;

    .line 581
    .local v2, ti:Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;
    if-eqz v2, :cond_2

    .line 582
    const v5, 0x7f10013c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 583
    .local v1, sizeText:Landroid/widget/TextView;
    const v5, 0x7f10013d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 584
    .local v0, check:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/email/activity/ToolBarScrollView;->access$1200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 585
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 589
    :goto_0
    if-eqz v1, :cond_2

    .line 590
    invoke-virtual {v2}, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;->getFontSizeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 592
    if-nez p1, :cond_4

    .line 593
    const/high16 v5, 0x4204

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 611
    :cond_1
    :goto_1
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    if-eqz v0, :cond_2

    .line 613
    new-instance v5, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;-><init>(Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;ILandroid/widget/RadioButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    .end local v0           #check:Landroid/widget/RadioButton;
    .end local v1           #sizeText:Landroid/widget/TextView;
    :cond_2
    return-object v3

    .line 587
    .restart local v0       #check:Landroid/widget/RadioButton;
    .restart local v1       #sizeText:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 594
    :cond_4
    if-ne p1, v8, :cond_5

    .line 595
    const/high16 v5, 0x4190

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 596
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 597
    const/high16 v5, 0x41a0

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 598
    :cond_6
    const/4 v5, 0x3

    if-ne p1, v5, :cond_7

    .line 599
    const/high16 v5, 0x41c0

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 600
    :cond_7
    const/4 v5, 0x4

    if-ne p1, v5, :cond_8

    .line 601
    const/high16 v5, 0x41e0

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 602
    :cond_8
    const/4 v5, 0x5

    if-ne p1, v5, :cond_9

    .line 603
    const/high16 v5, 0x4200

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 604
    :cond_9
    const/4 v5, 0x6

    if-ne p1, v5, :cond_a

    .line 605
    const/high16 v5, 0x4240

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 606
    :cond_a
    const/4 v5, 0x7

    if-ne p1, v5, :cond_b

    .line 607
    const/high16 v5, 0x4260

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 608
    :cond_b
    const/16 v5, 0x8

    if-ne p1, v5, :cond_1

    .line 609
    const/high16 v5, 0x4290

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method
