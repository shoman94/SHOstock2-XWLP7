.class Lcom/android/contacts/activities/ActionBarAdapter$1;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;)V
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
    .line 159
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    #getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->DELETE_CONTACTS_DONE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    .line 163
    return-void
.end method
