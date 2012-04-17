.class public final enum Lcom/android/contacts/activities/ActionBarAdapter$TabState;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/activities/ActionBarAdapter$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$TabState;

.field public static final enum ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

.field public static final enum FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

.field public static final enum GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const-string v1, "GROUPS"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 102
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 103
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->$VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$TabState;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 106
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 107
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 110
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 113
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->$VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0}, [Lcom/android/contacts/activities/ActionBarAdapter$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-object v0
.end method
