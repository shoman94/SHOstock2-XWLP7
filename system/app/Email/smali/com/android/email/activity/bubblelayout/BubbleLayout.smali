.class public Lcom/android/email/activity/bubblelayout/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "BubbleLayout.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBubbleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleClickMenuDialog:Landroid/app/AlertDialog;

.field private mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mBubbleRecipientLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

.field private mExpectedLayoutWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfSelectedBubbleByClickingButton:I

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    .line 85
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 86
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 92
    const-string v0, "BubbleLayout >> "

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->TAG:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    .line 85
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 86
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 92
    const-string v0, "BubbleLayout >> "

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->TAG:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/bubblelayout/BubbleLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addToContact(Lcom/android/email/activity/bubblelayout/BubbleData;)V

    return-void
.end method

.method private addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;
    .locals 8
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    .line 378
    const/4 v5, 0x0

    .line 379
    .local v5, totalWidth:I
    const/4 v1, 0x0

    .line 380
    .local v1, containerWidth:I
    const/4 v0, 0x0

    .line 381
    .local v0, bottomLayoutChildCount:I
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 382
    .local v4, indexOfLastLayout:I
    const/4 v2, 0x0

    .line 384
    .local v2, expectedButtonWidth:I
    if-nez p1, :cond_0

    .line 385
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 435
    :goto_0
    return-object v6

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v2

    .line 391
    if-lez v4, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_2

    .line 392
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 397
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 407
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 408
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 399
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 410
    .restart local v3       #i:I
    :cond_3
    add-int/2addr v5, v2

    .line 413
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 414
    if-nez v1, :cond_4

    .line 415
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getExpectedLayoutWidth()I

    move-result v1

    .line 419
    :cond_4
    :goto_3
    if-gt v5, v1, :cond_6

    .line 420
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    :goto_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 415
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v1

    goto :goto_3

    .line 421
    :cond_6
    if-ne v5, v2, :cond_7

    .line 427
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 429
    :cond_7
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 430
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private addToContact(Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 5
    .parameter "bubbleData"

    .prologue
    .line 743
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "email"

    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 748
    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    :cond_0
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 757
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7011214

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 765
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 760
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getExpectedLayoutWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    return v0
.end method

.method private getSummaryText(I)Ljava/lang/String;
    .locals 13
    .parameter "newWidth"

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, address:Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 534
    .local v5, summary:Ljava/lang/String;
    const-string v3, ""

    .line 535
    .local v3, nextAddress:Ljava/lang/String;
    const-string v1, ""

    .line 539
    .local v1, firstRecipientAddress:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v6, v5

    .line 599
    .end local v5           #summary:Ljava/lang/String;
    .local v6, summary:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 543
    .end local v6           #summary:Ljava/lang/String;
    .restart local v5       #summary:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 544
    .local v4, recipientsCount:I
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v8}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    .line 548
    move-object v5, v1

    :cond_2
    :goto_1
    move-object v6, v5

    .line 599
    .end local v5           #summary:Ljava/lang/String;
    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_0

    .line 551
    .end local v6           #summary:Ljava/lang/String;
    .restart local v5       #summary:Ljava/lang/String;
    :cond_3
    if-lez p1, :cond_5

    move v7, p1

    .line 552
    .local v7, widthOfTextView:I
    :goto_2
    if-nez v7, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getExpectedLayoutWidth()I

    move-result v8

    :goto_3
    add-int/lit8 v8, v8, 0x0

    add-int/lit8 v7, v8, -0x1b

    .line 563
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const/4 v2, 0x1

    .local v2, index:I
    :goto_5
    if-gt v2, v4, :cond_2

    .line 567
    if-ne v2, v4, :cond_8

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    :goto_6
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    if-ge v8, v7, :cond_9

    .line 579
    move-object v5, v3

    .line 580
    if-ge v2, v4, :cond_4

    .line 581
    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v8}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 551
    .end local v2           #index:I
    .end local v7           #widthOfTextView:I
    :cond_5
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    goto :goto_2

    .line 553
    .restart local v7       #widthOfTextView:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v8

    goto :goto_3

    .line 559
    :cond_7
    add-int/lit8 v7, v7, -0xa

    goto :goto_4

    .line 570
    .restart local v2       #index:I
    :cond_8
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f0802d2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sub-int v12, v4, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 586
    :cond_9
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 587
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f0802d2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sub-int v12, v4, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private isDuplicatedAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 818
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 819
    .local v0, bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    const/4 v2, 0x1

    .line 823
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "animationOn"

    .prologue
    .line 641
    new-instance v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-direct {v1, p1, p2}, Lcom/android/email/activity/bubblelayout/BubbleButton;-><init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V

    .line 644
    .local v1, button:Lcom/android/email/activity/bubblelayout/BubbleButton;
    new-instance v2, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    if-eqz p3, :cond_0

    .line 651
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 652
    .local v0, ani:Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 656
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    return-object v1
.end method

.method private makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "context"

    .prologue
    .line 609
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, ll:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 612
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 615
    return-object v0
.end method

.method private showBubbleButtonClickMenu(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f0a0028

    .line 667
    move-object v1, p1

    check-cast v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 668
    .local v1, button:Lcom/android/email/activity/bubblelayout/BubbleButton;
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    .line 670
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v6, :cond_0

    .line 672
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 675
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 678
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    if-ltz v6, :cond_2

    .line 681
    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v0

    .line 684
    .local v0, bubbleData:Lcom/android/email/activity/bubblelayout/BubbleData;
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/BubbleData;->isFromContact()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 689
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, menuItems:[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    .line 736
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 738
    .end local v0           #bubbleData:Lcom/android/email/activity/bubblelayout/BubbleData;
    .end local v4           #menuItems:[Ljava/lang/String;
    :cond_2
    return-void

    .line 692
    .restart local v0       #bubbleData:Lcom/android/email/activity/bubblelayout/BubbleData;
    :cond_3
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 693
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 695
    .local v2, dataUri:Landroid/net/Uri;
    invoke-static {v5, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 696
    .local v3, lookupUri:Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 697
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #menuItems:[Ljava/lang/String;
    goto :goto_0

    .line 700
    .end local v4           #menuItems:[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #menuItems:[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addButton(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/bubblelayout/BubbleButton;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 807
    .local v0, bubblebutton:Lcom/android/email/activity/bubblelayout/BubbleButton;
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 809
    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    goto :goto_0

    .line 812
    .end local v0           #bubblebutton:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_1
    return-void
.end method

.method public addButton(Lcom/android/emailcommon/mail/Address;Z)Z
    .locals 5
    .parameter "address"
    .parameter "animationOn"

    .prologue
    .line 326
    new-instance v0, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    .local v0, bubbleData:Lcom/android/email/activity/bubblelayout/BubbleData;
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public addButton(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "address"
    .parameter "animationOn"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-direct {v1, p1}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "address"
    .parameter "animationOn"

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isDuplicatedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0805ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 838
    const/4 v0, 0x0

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public deSelectLastButton()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSelected(Z)V

    .line 517
    :cond_0
    return-void
.end method

.method public deleteSelectedLastButton()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 523
    :cond_0
    return-void
.end method

.method public getAddressesAsDelimiterType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v0, Addresses:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 302
    .local v1, bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 305
    .end local v1           #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAddressesAsStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 310
    .local v1, listSize:I
    new-array v2, v1, [Ljava/lang/String;

    .line 312
    .local v2, stringArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 313
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-object v2
.end method

.method public getBubbleListCount()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedLastButton()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->isSelected()Z

    move-result v0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidAddress()Z
    .locals 3

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 222
    .local v0, bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->isValidAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 227
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 1
    .parameter "context"
    .parameter "data"

    .prologue
    .line 798
    invoke-virtual {p2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isDuplicatedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 801
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized rebuildBubbleLayout(I)V
    .locals 8
    .parameter "newWidth"

    .prologue
    .line 236
    monitor-enter p0

    const/4 v5, 0x0

    .line 237
    .local v5, totalWidth:I
    const/4 v4, 0x0

    .line 240
    .local v4, layoutWidth:I
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 244
    .local v3, layoutChildCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 245
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    .line 259
    .local v0, bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 262
    if-lez p1, :cond_2

    move v4, p1

    .line 263
    :goto_3
    if-gt v5, v4, :cond_3

    .line 264
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 236
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #layoutChildCount:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 255
    .restart local v1       #i:I
    .restart local v3       #layoutChildCount:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 262
    .restart local v0       #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    goto :goto_3

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 271
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 273
    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 274
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_2

    .line 281
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public rebuildSummaryText(I)V
    .locals 2
    .parameter "newWidth"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getSummaryText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method public registerChildViewsFromOwnXML()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    .line 113
    return-void
.end method

.method public registerMessageHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method public removeAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildSummaryText(I)V

    .line 154
    return-void
.end method

.method public removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 5
    .parameter "index"

    .prologue
    .line 464
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/bubblelayout/BubbleButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .local v2, result:Lcom/android/email/activity/bubblelayout/BubbleButton;
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f050002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 473
    .local v0, ani:Landroid/view/animation/Animation;
    new-instance v3, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 486
    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 487
    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 492
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v2           #result:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :goto_0
    return-object v2

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    const/4 v2, 0x0

    goto :goto_0

    .line 490
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #result:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto :goto_0
.end method

.method public selectLastButton()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSelected(Z)V

    move v0, v1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpectedLayoutWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    .line 135
    return-void
.end method

.method public setViewMode(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 188
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getSummaryText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 175
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateBubbleAfterSavingContact()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->refreshButton()V

    .line 199
    const/4 v0, 0x1

    return v0
.end method
