.class Lcom/android/contacts/list/CustomContactListFilterActivity$2;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    .line 148
    return-void
.end method
