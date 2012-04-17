.class Lcom/android/contacts/list/CustomContactListFilterActivity$6;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic val$syncMode:I


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iput p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$syncMode:I

    iput-object p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 923
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    #getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z
    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$syncMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Z)V

    .line 928
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    #getter for: Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$400(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 929
    return v2

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$6;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    goto :goto_0
.end method
