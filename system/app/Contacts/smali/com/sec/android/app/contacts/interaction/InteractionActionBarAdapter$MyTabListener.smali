.class Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 149
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilterController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterController;->setFilterType(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 162
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 150
    return-void
.end method
