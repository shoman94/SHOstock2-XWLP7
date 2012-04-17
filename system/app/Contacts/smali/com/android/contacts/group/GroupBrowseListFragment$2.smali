.class Lcom/android/contacts/group/GroupBrowseListFragment$2;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/widget/PopupMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1310
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
