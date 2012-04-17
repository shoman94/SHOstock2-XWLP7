.class Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResourceID:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2698
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    .line 2699
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2672
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serverId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 2695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 2700
    iput p3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    .line 2701
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2702
    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    .line 2703
    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lcom/android/email/activity/MailboxListFragment;->access$100(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 2704
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2709
    if-nez p2, :cond_3

    .line 2710
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2715
    .local v9, view:Landroid/widget/RelativeLayout;
    :goto_0
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxType()I

    move-result v8

    .line 2716
    .local v8, type:I
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v7

    .line 2717
    .local v7, text:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2718
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 2721
    :cond_0
    const v10, 0x7f100159

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2722
    .local v4, nameView:Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 2723
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2726
    :cond_1
    const/4 v7, 0x0

    .line 2727
    const v10, 0x7f10015d

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2734
    .local v6, statusView:Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2738
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxUnreadCount()Ljava/lang/String;

    move-result-object v7

    .line 2743
    const v10, 0x7f100007

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2744
    .local v3, folderIcon:Landroid/widget/ImageView;
    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    const/16 v10, 0xc

    if-ne v8, v10, :cond_6

    .line 2746
    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getServerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2747
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2748
    const v10, 0x7f020095

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2758
    :goto_1
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v10

    if-ne p1, v10, :cond_7

    .line 2759
    const v10, 0x7f02033c

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2767
    :goto_2
    const v10, 0x7f10015b

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2769
    .local v1, countBackground:Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2771
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    if-lez v10, :cond_8

    .line 2772
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2778
    :goto_3
    const v10, 0x7f100156

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2779
    .local v2, dividerLineBottom:Landroid/widget/ImageView;
    const v10, 0x7f100160

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2781
    .local v5, selectedFolderIcon:Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2782
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2784
    return-object v9

    .end local v1           #countBackground:Landroid/widget/ImageView;
    .end local v2           #dividerLineBottom:Landroid/widget/ImageView;
    .end local v3           #folderIcon:Landroid/widget/ImageView;
    .end local v4           #nameView:Landroid/widget/TextView;
    .end local v5           #selectedFolderIcon:Landroid/widget/ImageView;
    .end local v6           #statusView:Landroid/widget/TextView;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #view:Landroid/widget/RelativeLayout;
    :cond_3
    move-object/from16 v9, p2

    .line 2712
    check-cast v9, Landroid/widget/RelativeLayout;

    .restart local v9       #view:Landroid/widget/RelativeLayout;
    goto/16 :goto_0

    .line 2750
    .restart local v3       #folderIcon:Landroid/widget/ImageView;
    .restart local v4       #nameView:Landroid/widget/TextView;
    .restart local v6       #statusView:Landroid/widget/TextView;
    .restart local v7       #text:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_4
    const v10, 0x7f020091

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2752
    :cond_5
    const v10, 0x7f020091

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2755
    :cond_6
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 2764
    :cond_7
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2774
    .restart local v1       #countBackground:Landroid/widget/ImageView;
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_3
.end method
