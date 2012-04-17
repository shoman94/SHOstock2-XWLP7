.class Lcom/android/email/activity/MessageCompose$18;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2707
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$18;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2709
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x7f100142

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2710
    .local v4, text1:Landroid/widget/TextView;
    const v6, 0x7f1000fc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2711
    .local v5, text2:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2712
    .local v2, tempText1:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2713
    .local v3, tempText2:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$18;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080510

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2714
    .local v1, showMore:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2715
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2716
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2717
    .local v0, partitionIndex:I
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$18;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/email/EmailAddressAdapter;->doGalSearch(I)V

    .line 2718
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$18;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$3800(Lcom/android/email/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1771

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2720
    .end local v0           #partitionIndex:I
    :cond_0
    const-string v6, "(Group)"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2721
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$18;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAddressFromGroup(Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/email/activity/MessageCompose;->access$3900(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 2722
    :cond_1
    return-void
.end method
