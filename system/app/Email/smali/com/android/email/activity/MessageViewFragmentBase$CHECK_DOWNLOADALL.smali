.class final enum Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
.super Ljava/lang/Enum;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CHECK_DOWNLOADALL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field public static final enum ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field public static final enum ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field public static final enum ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field public static final enum NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 555
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    const-string v1, "ERROR_EXTERNALSRORAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    const-string v1, "ERROR_AVAILABLESTORAGESIZE"

    invoke-direct {v0, v1, v4}, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    const-string v1, "ERROR_DOWNLOAD_NOT_CONPLETE"

    invoke-direct {v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 554
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->$VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

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
    .line 554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 1
    .parameter

    .prologue
    .line 554
    const-class v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    return-object v0
.end method

.method public static values()[Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->$VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    invoke-virtual {v0}, [Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    return-object v0
.end method
