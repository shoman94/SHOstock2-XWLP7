.class final enum Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
.super Ljava/lang/Enum;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

.field public static final enum LOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

.field public static final enum LOAING:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

.field public static final enum NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    const-string v1, "NOTLOADED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 71
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    const-string v1, "LOAING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOAING:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 72
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOAING:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->$VALUES:[Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 1
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->$VALUES:[Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-virtual {v0}, [Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object v0
.end method
