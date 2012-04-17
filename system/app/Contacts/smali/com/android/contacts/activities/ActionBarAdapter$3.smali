.class Lcom/android/contacts/activities/ActionBarAdapter$3;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$3;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$3;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 399
    return-void
.end method
