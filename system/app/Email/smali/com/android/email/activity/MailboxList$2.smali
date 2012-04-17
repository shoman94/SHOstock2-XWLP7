.class Lcom/android/email/activity/MailboxList$2;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 499
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    #setter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v0, p3}, Lcom/android/email/activity/MailboxList;->access$202(Lcom/android/email/activity/MailboxList;I)I

    .line 500
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    .line 501
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v1, -0x1

    #setter for: Lcom/android/email/activity/MailboxList;->mSelectedPosition:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxList;->access$202(Lcom/android/email/activity/MailboxList;I)I

    .line 505
    return-void
.end method
