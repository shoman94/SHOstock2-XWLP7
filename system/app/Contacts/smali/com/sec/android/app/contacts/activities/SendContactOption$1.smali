.class Lcom/sec/android/app/contacts/activities/SendContactOption$1;
.super Ljava/lang/Object;
.source "SendContactOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SendContactOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SendContactOption;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SendContactOption;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SendContactOption$1;->this$0:Lcom/sec/android/app/contacts/activities/SendContactOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SendContactOption$1;->this$0:Lcom/sec/android/app/contacts/activities/SendContactOption;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SendContactOption;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 53
    return-void
.end method
