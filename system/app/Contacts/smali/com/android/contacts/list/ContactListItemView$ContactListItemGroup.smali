.class public Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListItemGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    .line 1362
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1363
    return-void
.end method


# virtual methods
.method protected layoutLeftSide(IIII)I
    .locals 13
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "leftBound"

    .prologue
    .line 1770
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v5, p4, v9

    .line 1771
    .local v5, leftBoundForPresenceIcon:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1772
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 1773
    .local v8, presenceIconWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 1774
    .local v6, presenceIconHeight:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v7, p2, v9

    .line 1775
    .local v7, presenceIconTop:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    add-int v10, v5, v8

    add-int v11, v7, v6

    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1780
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 1784
    .end local v6           #presenceIconHeight:I
    .end local v7           #presenceIconTop:I
    .end local v8           #presenceIconWidth:I
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v4, p4, v9

    .line 1785
    .local v4, leftBoundForAccountIconLayout:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1786
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 1787
    .local v1, accountIconLayoutWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v2, v9, v10

    .line 1789
    .local v2, accountIconTop:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v9

    add-int v10, v4, v1

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v4, v2, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1794
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v4, v9

    .line 1798
    .end local v1           #accountIconLayoutWidth:I
    .end local v2           #accountIconTop:I
    :cond_1
    if-le v5, v4, :cond_2

    .line 1799
    move/from16 p4, v5

    .line 1805
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1806
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v3

    .line 1807
    .local v3, buttonWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    add-int v10, p4, v3

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v11, p1, v11

    move/from16 v0, p4

    invoke-virtual {v9, v0, p2, v10, v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 1812
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 1813
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)V

    .line 1814
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1823
    .end local v3           #buttonWidth:I
    :goto_1
    return p4

    .line 1801
    :cond_2
    move/from16 p4, v4

    goto :goto_0

    .line 1820
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_1
.end method

.method protected layoutRightSide(IIII)I
    .locals 15
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"

    .prologue
    .line 1673
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1674
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v4

    .line 1675
    .local v4, buttonWidth:I
    sub-int p4, p4, v4

    .line 1676
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    add-int v11, p4, v4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 1681
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$3302(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 1682
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)V

    .line 1683
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    .line 1684
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1685
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    iget-object v14, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1697
    :goto_0
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v9, p4, v10

    .line 1698
    .local v9, rightBoundForPresenceIcon:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v8, p4, v10

    .line 1707
    .end local v4           #buttonWidth:I
    .local v8, rightBoundForAccountIconLayout:I
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1708
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    .line 1709
    .local v7, presenceIconWidth:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    .line 1710
    .local v5, presenceIconHeight:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v6, p2, v10

    .line 1711
    .local v6, presenceIconTop:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    sub-int v11, v9, v7

    add-int v12, v6, v5

    invoke-virtual {v10, v11, v6, v9, v12}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1716
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 1719
    .end local v5           #presenceIconHeight:I
    .end local v6           #presenceIconTop:I
    .end local v7           #presenceIconWidth:I
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1720
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 1721
    .local v2, accountIconLayoutWidth:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v10, v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v3, v10, v11

    .line 1723
    .local v3, accountIconTop:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    sub-int v11, v8, v2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v11, v3, v8, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1728
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, v2

    sub-int/2addr v8, v10

    .line 1733
    .end local v2           #accountIconLayoutWidth:I
    .end local v3           #accountIconTop:I
    :cond_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1734
    :cond_3
    if-ge v9, v8, :cond_6

    .line 1735
    move/from16 p4, v9

    .line 1744
    :goto_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1745
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v4

    .line 1746
    .restart local v4       #buttonWidth:I
    sub-int p4, p4, v4

    .line 1747
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    add-int v11, p4, v4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 1752
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 1753
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)V

    .line 1754
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    .line 1755
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1764
    .end local v4           #buttonWidth:I
    :goto_3
    return p4

    .line 1691
    .end local v8           #rightBoundForAccountIconLayout:I
    .end local v9           #rightBoundForPresenceIcon:I
    .restart local v4       #buttonWidth:I
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 1700
    .end local v4           #buttonWidth:I
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$3302(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 1702
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTouchWizIndexScrollMarginRight:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int v10, p4, v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v9, v10, v11

    .line 1704
    .restart local v9       #rightBoundForPresenceIcon:I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTouchWizIndexScrollMarginRight:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int v10, p4, v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v8, v10, v11

    .restart local v8       #rightBoundForAccountIconLayout:I
    goto/16 :goto_1

    .line 1737
    :cond_6
    move/from16 p4, v8

    goto/16 :goto_2

    .line 1740
    :cond_7
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTouchWizIndexScrollMarginRight:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    goto/16 :goto_2

    .line 1761
    :cond_8
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1455
    sub-int v9, p5, p3

    .line 1456
    .local v9, height:I
    sub-int v18, p4, p2

    .line 1459
    .local v18, width:I
    const/16 v16, 0x0

    .line 1460
    .local v16, topBound:I
    move v3, v9

    .line 1462
    .local v3, bottomBound:I
    const-string v6, ""

    .line 1463
    .local v6, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 1464
    const-string v19, "he"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "iw"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1466
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v13, p4, v19

    .line 1467
    .local v13, rightBound:I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v3, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutLeftSide(IIII)I

    move-result v10

    .line 1470
    .local v10, leftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    .line 1472
    .local v5, checkBoxWidth:I
    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v4, v16, v19

    .line 1473
    .local v4, checkBoxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    sub-int v20, v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v13, v2}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v5

    sub-int v13, v13, v19

    .line 1480
    .end local v4           #checkBoxTop:I
    .end local v5           #checkBoxWidth:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    .line 1481
    .local v12, photoView:Landroid/view/View;
    :goto_0
    if-eqz v12, :cond_3

    .line 1483
    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    .line 1484
    .local v11, photoTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v11, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v11, v13, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1495
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    .line 1499
    .end local v11           #photoTop:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v17, v19, v20

    .line 1501
    .local v17, totalTextHeight:I
    add-int v19, v3, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    .line 1505
    .local v15, textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1512
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v14, v13, v19

    .line 1514
    .local v14, statusLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v15, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 1519
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1520
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1524
    :cond_7
    move v8, v13

    .line 1525
    .local v8, dataRightBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1531
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v8, v19, v20

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v8, v8, v19

    .line 1538
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v15, v8, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 1542
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1543
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1546
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1663
    .end local v8           #dataRightBound:I
    :cond_d
    :goto_1
    return-void

    .line 1480
    .end local v12           #photoView:Landroid/view/View;
    .end local v14           #statusLeftBound:I
    .end local v15           #textTopBound:I
    .end local v17           #totalTextHeight:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    goto/16 :goto_0

    .line 1551
    .end local v10           #leftBound:I
    .end local v13           #rightBound:I
    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingLeft:I

    .line 1558
    .restart local v10       #leftBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v3, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutRightSide(IIII)I

    move-result v13

    .line 1561
    .restart local v13       #rightBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    .line 1563
    .restart local v5       #checkBoxWidth:I
    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v4, v16, v19

    .line 1564
    .restart local v4       #checkBoxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    add-int v20, v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v4, v1, v2}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v5

    add-int v10, v10, v19

    .line 1574
    .end local v4           #checkBoxTop:I
    .end local v5           #checkBoxWidth:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    .line 1575
    .restart local v12       #photoView:Landroid/view/View;
    :goto_2
    if-eqz v12, :cond_12

    .line 1577
    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    .line 1578
    .restart local v11       #photoTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1595
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    .line 1599
    .end local v11           #photoTop:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v17, v19, v20

    .line 1601
    .restart local v17       #totalTextHeight:I
    add-int v19, v3, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    .line 1605
    .restart local v15       #textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1614
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v14, v10, v19

    .line 1616
    .restart local v14       #statusLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v15, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 1623
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1624
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1628
    :cond_16
    move v7, v10

    .line 1629
    .local v7, dataLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1637
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v7, v19, v20

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v7, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v7, v7, v19

    .line 1646
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v15, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 1652
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1653
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    .line 1656
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 1574
    .end local v7           #dataLeftBound:I
    .end local v12           #photoView:Landroid/view/View;
    .end local v14           #statusLeftBound:I
    .end local v15           #textTopBound:I
    .end local v17           #totalTextHeight:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1369
    invoke-static {v6, p1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->resolveSize(II)I

    move-result v2

    .line 1370
    .local v2, width:I
    const/4 v0, 0x0

    .line 1371
    .local v0, height:I
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v1

    .line 1373
    .local v1, preferredHeight:I
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1374
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1375
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1376
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1377
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1380
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1382
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1385
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1386
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1387
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1390
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1391
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1392
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1396
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1397
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1398
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1402
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1403
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1404
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1408
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1409
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 1410
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1413
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1414
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1415
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1420
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1423
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1424
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 1427
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1428
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 1432
    :cond_9
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1433
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/CheckBox;->measure(II)V

    .line 1434
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$1702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1438
    :cond_a
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1439
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1440
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$1902(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1444
    :cond_b
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)V

    .line 1445
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v3

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1448
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1450
    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setMeasuredDimension(II)V

    .line 1451
    return-void
.end method
