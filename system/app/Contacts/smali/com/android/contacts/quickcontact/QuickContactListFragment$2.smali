.class Lcom/android/contacts/quickcontact/QuickContactListFragment$2;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 156
    .local v0, action:Lcom/android/contacts/quickcontact/Action;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V

    .line 157
    :cond_0
    return-void
.end method
