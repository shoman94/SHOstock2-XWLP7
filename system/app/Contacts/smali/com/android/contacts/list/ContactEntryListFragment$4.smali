.class Lcom/android/contacts/list/ContactEntryListFragment$4;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$4;,"Lcom/android/contacts/list/ContactEntryListFragment.4;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$4;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 1332
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$4;,"Lcom/android/contacts/list/ContactEntryListFragment.4;"
    if-gez p1, :cond_0

    .line 1333
    const/4 p1, 0x0

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$4;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$4;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 1336
    return-void
.end method
