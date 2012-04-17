.class Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation


# instance fields
.field protected id:J

.field protected isEnabled:Z

.field private final viewTypeForAdapter:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "viewType"

    .prologue
    .line 1474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 1472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1475
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->viewTypeForAdapter:I

    .line 1476
    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .parameter "clickedView"
    .parameter "fragmentListener"

    .prologue
    .line 1498
    return-void
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1483
    iget-wide v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    return-wide v0
.end method

.method getViewType()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->viewTypeForAdapter:I

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    return v0
.end method
