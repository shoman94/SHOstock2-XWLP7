.class public Lcom/android/contacts/quickcontact/QuickContactListFragment;
.super Landroid/app/Fragment;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    }
.end annotation


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentContainer:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private final mOutsideClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 152
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 161
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setRetainInstance(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-object v0
.end method

.method private configureAdapter()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 53
    const v0, 0x7f0400a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 60
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 66
    return-void
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 70
    return-void
.end method
