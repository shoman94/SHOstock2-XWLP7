.class final enum Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
.super Ljava/lang/Enum;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field public static final enum FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field public static final enum TWO_COLUMN:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field public static final enum VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    const-string v1, "TWO_COLUMN"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->TWO_COLUMN:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    const-string v1, "VIEW_PAGER_AND_TAB_CAROUSEL"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    const-string v1, "FRAGMENT_CAROUSEL"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->TWO_COLUMN:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->$VALUES:[Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->$VALUES:[Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v0}, [Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    return-object v0
.end method
