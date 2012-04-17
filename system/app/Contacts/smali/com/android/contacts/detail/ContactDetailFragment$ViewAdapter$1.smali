.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field final synthetic val$favoritesStar:Landroid/widget/CheckBox;

.field final synthetic val$lookupUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1934
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1936
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1938
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
