.class Lcom/android/email/activity/MessageCompose$AddAddessTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAddessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bubbleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private isCancelledFlag:Z

.field private isDuplicatedFlag:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 12629
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12630
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    .line 12631
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    .line 12633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12629
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method

.method static synthetic access$13202(Lcom/android/email/activity/MessageCompose$AddAddessTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12629
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, list:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 12662
    aget-object v2, p1, v8

    .line 12663
    .local v2, emailAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12665
    .local v0, arraySize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 12666
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    if-eqz v5, :cond_0

    .line 12667
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 12679
    :goto_1
    return-object v5

    .line 12669
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12671
    .local v1, emailAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v7, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-direct {v7, v1}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v4

    .line 12672
    .local v4, temp:Lcom/android/email/activity/bubblelayout/BubbleButton;
    if-eqz v4, :cond_1

    .line 12673
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12665
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12675
    :cond_1
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    goto :goto_2

    .line 12679
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v4           #temp:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12629
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 12638
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 12683
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 12684
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 12685
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/util/ArrayList;)V

    .line 12687
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12688
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f0805eb

    #calls: Lcom/android/email/activity/MessageCompose;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$13400(Lcom/android/email/activity/MessageCompose;II)V

    .line 12690
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    if-eqz v0, :cond_2

    .line 12691
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f0805ea

    #calls: Lcom/android/email/activity/MessageCompose;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$13400(Lcom/android/email/activity/MessageCompose;II)V

    .line 12693
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getBubbleListCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 12694
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 12696
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_4

    .line 12699
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->focusOutRecipient()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)V

    .line 12702
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13100(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12703
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12629
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12641
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v1, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;-><init>(Lcom/android/email/activity/MessageCompose$AddAddessTask;Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$13102(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 12652
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    .line 12653
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    .line 12654
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13100(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080504

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 12655
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13100(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 12657
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 12658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 12659
    :cond_0
    return-void
.end method
