.class Lcom/android/email/activity/MessageListXL$10;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupAccountView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 3129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 3133
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3134
    .local v1, accountId:J
    invoke-static {p3}, Lcom/android/email/activity/MessageListXL;->access$4402(I)I

    .line 3135
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4400()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 3139
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$3002(J)J

    .line 3140
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 3143
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$3302(Lcom/android/email/activity/MessageListXL;J)J

    .line 3144
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3148
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
