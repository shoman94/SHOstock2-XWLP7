.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    invoke-static {v1, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 402
    .local v0, popup:Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 405
    :cond_0
    return-void
.end method
