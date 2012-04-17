.class Lcom/android/contacts/detail/ContactDetailTabCarousel$2;
.super Ljava/lang/Object;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailTabCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTabSelected(I)V

    .line 165
    return-void
.end method
