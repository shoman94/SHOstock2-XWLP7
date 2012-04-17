.class Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fragmentManager"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 657
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 658
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 662
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;-><init>()V

    .line 663
    .local v1, fragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 664
    .local v2, mimeType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 665
    .local v0, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v1, v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setActions(Ljava/util/List;)V

    .line 666
    return-object v1
.end method
