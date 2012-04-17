.class abstract Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "QuickFix"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2410
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2410
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isApplicable()Z
.end method
